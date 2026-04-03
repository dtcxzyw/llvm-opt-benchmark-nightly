begin_hunk_0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not50 = icmp eq i32 %2, 0
  %i.b = shl nuw nsw i64 %i.a, 1
  br i1 %.not50, label %.lr.ph.split.us.preheader, label %.lr.ph.split

end_hunk_0
begin_hunk_1
  br label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47.split.us.preheader, %bb.b
  %.146.us = phi ptr [ %i.p, %bb.b ], [ %0, %.lr.ph47.split.us.preheader ] ; 3 uses
  %.13145.us = phi i64 [ %i.q, %bb.b ], [ 0, %.lr.ph47.split.us.preheader ]
  %i.n = load i64, ptr %.146.us, align 8, !tbaa !19
  %i.o = ptrtoint ptr %.146.us to i64
  %.not.us = icmp eq i64 %i.n, %i.o
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph47.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.146.us, i64 8
end_hunk_1
begin_hunk_2
  %i.ag = load i64, ptr %.146, align 8, !tbaa !19 ; 2 uses
  %i.ah = ptrtoint ptr %.146 to i64
  %.not = icmp eq i64 %i.ag, %i.ah
  br i1 %.not, label %bb.e, label %.split.us.a

.split.us.a:                                      ; preds = %.lr.ph47.split
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %.146, i64 noundef %i.ag) ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

end_hunk_2
begin_hunk_3
  %exitcond62.not = icmp eq i64 %i.ax, %i.a
  br i1 %exitcond62.not, label %.loopexit, label %.lr.ph47.split, !llvm.loop !29

.loopexit:                                        ; preds = %bb.g, %.lr.ph47.split.us, %bb.b, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph47.split.us ], [ 0, %bb.b ], [ 0, %bb.g ]
  ret i32 %.032
}

end_hunk_3
begin_hunk_4
  br i1 %exitcond63.not.i.us.us.3, label %memtest_addressing.exit.us.us, label %.lr.ph47.split.us.i.us.us, !llvm.loop !29

memtest_addressing.exit.us.us:                    ; preds = %bb.b, %.lr.ph47.split.us.i.us.us.3, %.lr.ph47.split.us.i.us.us.2, %.lr.ph47.split.us.i.us.us.1, %.lr.ph47.split.us.i.us.us
  %phi.call.us.us = phi i32 [ 1, %.lr.ph47.split.us.i.us.us ], [ 0, %bb.b ], [ 1, %.lr.ph47.split.us.i.us.us.1 ], [ 1, %.lr.ph47.split.us.i.us.us.3 ], [ 1, %.lr.ph47.split.us.i.us.us.2 ]
  %i.ah = add nsw i32 %phi.call.us.us, %.0149.us.us
  br label %.split46.us.us

end_hunk_4
