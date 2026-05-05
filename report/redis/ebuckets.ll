inline.NumInlined: 125
inline.NumDeleted: 23
begin_hunk_0_@ebSingleSegExpire:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04076 = phi ptr [ %i.a, %.lr.ph ], [ %i.y, %bb.f ] ; 4 uses
  %.04375 = phi ptr [ %i.c, %.lr.ph ], [ %i.an, %bb.f ] ; 6 uses
  %.04674 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.f ] ; 5 uses
  %.043.val = load i32, ptr %.04375, align 8, !tbaa !22
  %i.q = getelementptr i8, ptr %.04375, i64 4
  %.043.val53 = load i16, ptr %i.q, align 4, !tbaa !25
end_hunk_0
begin_hunk_1_@ebSingleSegExpire:bb.a

.loopexit.loopexitsplit:                          ; preds = %bb.f
  %.lcssa120 = phi i32 [ %i.ar, %bb.f ]
  %.04368.ph.ph = phi ptr [ %i.an, %bb.f ]
  %.04065.ph.ph = phi ptr [ %i.y, %bb.f ]
  br label %.loopexit.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %bb.b
  %.04674.lcssa = phi i32 [ %.04674, %bb.b ]
  %.04674.lcssa.a = phi i32 [ %.04674, %bb.b ]    ; 0 uses
  %split120 = phi ptr [ %.04375, %bb.b ]
  %split121 = phi ptr [ %.04076, %bb.b ]
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
  %.04671.ph = phi i32 [ %.04674.lcssa, %..loopexit.loopexit_crit_edge ], [ %.lcssa120, %.loopexit.loopexitsplit ]
  %.04368.ph = phi ptr [ %split120, %..loopexit.loopexit_crit_edge ], [ %.04368.ph.ph, %.loopexit.loopexitsplit ] ; 2 uses
  %.04065.ph = phi ptr [ %split121, %..loopexit.loopexit_crit_edge ], [ %.04065.ph.ph, %.loopexit.loopexitsplit ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.04368.ph, i64 6
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  br label %.loopexit
end_hunk_1
begin_hunk_2_@ebExpire:bb.a

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %.04466.i73 = phi ptr [ null, %.lr.ph.i ], [ %.04466.i72, %bb.i ] ; 5 uses
  %.04167.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ] ; 5 uses
  %.04466.i = phi ptr [ %.0.i.i, %.lr.ph.i ], [ %i.ag, %bb.i ] ; 6 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !16
  %i.u = tail call ptr %i.t(ptr noundef nonnull %.04466.i) #8, !inline_history !91 ; 8 uses
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val53.i = load i16, ptr %i.v, align 4, !tbaa !25
end_hunk_2
begin_hunk_3_@ebExpire:bb.a

bb.i:                                             ; preds = %bb.h, %bb.f
  %.04466.i72 = phi ptr [ %.04466.i, %bb.h ], [ %.04466.i73, %bb.f ] ; 2 uses
  %i.aq = add i32 %.04167.i, 1                    ; 3 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !18
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.c, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@ebExpire:bb.a
  br i1 %.not.i, label %..thread.i.loopexitsplit_crit_edge, label %bb.d

.thread.i.loopexitsplitsplit:                     ; preds = %bb.e
  %.lcssa205.ph.ph = phi ptr [ %i.u, %bb.e ]
  %.04466.i74.ph.ph = phi ptr [ %.04466.i73, %bb.e ]
  %.04462.i.ph.ph.ph = phi ptr [ %.04466.i, %bb.e ]
  %.04167.i.lcssa211 = phi i32 [ %.04167.i, %bb.e ]
  br label %.thread.i.loopexitsplit

..thread.i.loopexitsplit_crit_edge:               ; preds = %bb.i
  %.lcssa219 = phi i32 [ %i.aq, %bb.i ]
  %split215 = phi ptr [ %i.u, %bb.i ]
  %split216 = phi ptr [ %.04466.i72, %bb.i ]
  %split217 = phi ptr [ null, %bb.i ]
  %.lcssa210 = phi i32 [ %i.aq, %bb.i ]           ; 0 uses
  br label %.thread.i.loopexitsplit

.thread.i.loopexitsplit:                          ; preds = %.thread.i.loopexitsplitsplit, %..thread.i.loopexitsplit_crit_edge
  %.lcssa205.ph = phi ptr [ %split215, %..thread.i.loopexitsplit_crit_edge ], [ %.lcssa205.ph.ph, %.thread.i.loopexitsplitsplit ]
  %.04466.i74.ph = phi ptr [ %split216, %..thread.i.loopexitsplit_crit_edge ], [ %.04466.i74.ph.ph, %.thread.i.loopexitsplitsplit ]
  %.04462.i.ph.ph = phi ptr [ %split217, %..thread.i.loopexitsplit_crit_edge ], [ %.04462.i.ph.ph.ph, %.thread.i.loopexitsplitsplit ]
  %.04160.i.ph.ph = phi i32 [ %.lcssa219, %..thread.i.loopexitsplit_crit_edge ], [ %.04167.i.lcssa211, %.thread.i.loopexitsplitsplit ]
  br label %.thread.i.loopexit

..thread.i.loopexit_crit_edge:                    ; preds = %bb.d
  %.04167.i.lcssa = phi i32 [ %.04167.i, %bb.d ]
  %split = phi ptr [ %i.u, %bb.d ]
  %split210 = phi ptr [ %.04466.i73, %bb.d ]
  %split211 = phi ptr [ %.04466.i, %bb.d ]
  %.04167.i.lcssa.a = phi i32 [ %.04167.i, %bb.d ] ; 0 uses
  br label %.thread.i.loopexit

.thread.i.loopexit:                               ; preds = %.thread.i.loopexitsplit, %..thread.i.loopexit_crit_edge
  %.lcssa205 = phi ptr [ %split, %..thread.i.loopexit_crit_edge ], [ %.lcssa205.ph, %.thread.i.loopexitsplit ]
  %.04466.i74 = phi ptr [ %split210, %..thread.i.loopexit_crit_edge ], [ %.04466.i74.ph, %.thread.i.loopexitsplit ] ; 2 uses
  %.04462.i.ph = phi ptr [ %split211, %..thread.i.loopexit_crit_edge ], [ %.04462.i.ph.ph, %.thread.i.loopexitsplit ]
  %.04160.i.ph = phi i32 [ %.04167.i.lcssa, %..thread.i.loopexit_crit_edge ], [ %.04160.i.ph.ph, %.thread.i.loopexitsplit ]
  store ptr %.04466.i74, ptr %i.a, align 8
  br label %.thread.i

end_hunk_4
begin_hunk_5_@ebExpireDryRun:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.d ] ; 2 uses
  %lsr.iv.a = phi i64 [ %4, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.04769 = phi ptr [ %i.s, %bb.d ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %4 = add i64 %lsr.iv.a, 1                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04769, i64 6
  %i.n = load i16, ptr %i.m, align 2
  %i.o = and i16 %i.n, 1
end_hunk_5
begin_hunk_6_@ebExpireDryRun:bb.a
  %i.w = zext i32 %.047.val to i64
  %i.x = or disjoint i64 %i.v, %i.w
  %.not56 = icmp ult i64 %i.x, %2
  %lsr.iv.next = add i64 %lsr.iv, 1
  br i1 %.not56, label %.lr.ph, label %.loopexit65.loopexitsplit

bb.e:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@ebExpireDryRun:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.g
  %.143.lcssa = phi i64 [ 0, %bb.g ], [ %.143.lcssa.ph, %.thread.loopexit ] ; 5 uses
  %.039.lcssa = phi ptr [ %i.ab, %bb.g ], [ %.039.lcssa.ph, %.thread.loopexit ] ; 3 uses
  call void @raxStop(ptr noundef nonnull %3) #8
  %i.bm = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 12
end_hunk_7
begin_hunk_8_@ebExpireDryRun:bb.a
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.j
  %lsr.iv99 = phi i64 [ %i.bx, %.lr.ph87.preheader ], [ %lsr.iv.next100, %bb.j ] ; 2 uses
  %.086 = phi ptr [ %i.ce, %bb.j ], [ %i.br, %.lr.ph87.preheader ] ; 2 uses
  %.44685 = phi i64 [ %5, %bb.j ], [ %.143.lcssa, %.lr.ph87.preheader ]
  %5 = add i64 %.44685, 1                         ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.086, i64 6
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = and i16 %i.bz, 1
end_hunk_8
begin_hunk_9_@ebExpireDryRun:bb.a
  br label %.loopexit

.loopexit.loopexitsplit:                          ; preds = %.lr.ph87
  %lsr.iv99.lcssa = phi i64 [ %5, %.lr.ph87 ]
  br label %.loopexit.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %bb.j
  %lsr.iv99.lcssa101 = phi i64 [ %lsr.iv99, %bb.j ]
  %split99 = phi i64 [ %5, %bb.j ]                ; 0 uses
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
end_hunk_9
begin_hunk_10_@ebExpireDryRun:bb.a
  br label %.loopexit65

.loopexit65.loopexitsplit:                        ; preds = %bb.d
  %lsr.iv.lcssa98 = phi i64 [ %4, %bb.d ]
  br label %.loopexit65.loopexit

.lr.ph..loopexit65.loopexit_crit_edge:            ; preds = %.lr.ph
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %lsr.iv.lcssa.a = phi i64 [ %4, %.lr.ph ]       ; 0 uses
  br label %.loopexit65.loopexit

.loopexit65.loopexit:                             ; preds = %.loopexit65.loopexitsplit, %.lr.ph..loopexit65.loopexit_crit_edge
  %.lcssa97 = phi i64 [ %lsr.iv.lcssa, %.lr.ph..loopexit65.loopexit_crit_edge ], [ %lsr.iv.lcssa98, %.loopexit65.loopexitsplit ]
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit65.loopexit, %bb.c, %.loopexit, %bb.a
end_hunk_10
