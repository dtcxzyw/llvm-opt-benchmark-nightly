inline.NumInlined: 31
begin_hunk_0_@memtest_addressing:bb.a

.lr.ph:                                           ; preds = %bb.a
  %.not50 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not50, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@memtest_addressing:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.lr.ph47, label %.lr.ph.split.us.preheader92

.lr.ph.split.us.preheader92:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.044.us.ph = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.c, %middle.block ]
  %.03043.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader92, %.lr.ph.split.us
  %.044.us = phi ptr [ %i.j, %.lr.ph.split.us ], [ %.044.us.ph, %.lr.ph.split.us.preheader92 ] ; 3 uses
  %.03043.us = phi i64 [ %i.k, %.lr.ph.split.us ], [ %.03043.us.ph, %.lr.ph.split.us.preheader92 ]
end_hunk_1
begin_hunk_2_@memtest_addressing:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.044.us, i64 8
  %i.k = add nuw nsw i64 %.03043.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond61.not, label %.lr.ph47, label %.lr.ph.split.us, !llvm.loop !28

.lr.ph47:                                         ; preds = %.lr.ph.split.us, %middle.block
  br label %.lr.ph47.split.us

.lr.ph47.split.us:                                ; preds = %.lr.ph47, %bb.b
  %.146.us = phi ptr [ %i.n, %bb.b ], [ %0, %.lr.ph47 ] ; 4 uses
  %.13145.us = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph47 ]
  %i.l = load i64, ptr %.146.us, align 8, !tbaa !19 ; 2 uses
  %i.m = ptrtoint ptr %.146.us to i64
  %.not.us = icmp eq i64 %i.l, %i.m
end_hunk_2
begin_hunk_3_@memtest_addressing:bb.a
bb.c:                                             ; preds = %.lr.ph.split
  %i.t = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.u = mul i64 %i.t, %.03043
  %3 = lshr exact i64 %i.u, 1
  %i.v = udiv i64 %3, %i.a                        ; 3 uses
  %i.w = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.v, %i.w
  br i1 %.not.i, label %memtest_progress_step.exit, label %.lr.ph.i
end_hunk_3
begin_hunk_4_@memtest_addressing:bb.a
bb.d:                                             ; preds = %.lr.ph.split, %memtest_progress_step.exit
  %i.ad = add nuw nsw i64 %.03043, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.a
  br i1 %exitcond.not, label %.lr.ph47.split, label %.lr.ph.split, !llvm.loop !30

.lr.ph47.split:                                   ; preds = %bb.d, %bb.h
  %.146 = phi ptr [ %i.ah, %bb.h ], [ %0, %bb.d ] ; 4 uses
  %.13145 = phi i64 [ %i.av, %bb.h ], [ 0, %bb.d ] ; 3 uses
  %i.ae = load i64, ptr %.146, align 8, !tbaa !19 ; 2 uses
  %i.af = ptrtoint ptr %.146 to i64
  %.not = icmp eq i64 %i.ae, %i.af
end_hunk_4
begin_hunk_5_@memtest_addressing:bb.a
  %i.ak = add nuw nsw i64 %.13145, %i.a
  %i.al = load i64, ptr @progress_full, align 8, !tbaa !19
  %i.am = mul i64 %i.al, %i.ak
  %4 = lshr i64 %i.am, 1
  %i.an = udiv i64 %4, %i.a                       ; 3 uses
  %i.ao = load i64, ptr @progress_printed, align 8, !tbaa !19
  %.not.i37 = icmp eq i64 %i.an, %i.ao
  br i1 %.not.i37, label %memtest_progress_step.exit41, label %.lr.ph.i38
end_hunk_5
