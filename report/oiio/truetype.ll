begin_hunk_0
  br i1 %i.bf, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = zext i32 %i.n to i64                    ; 22 uses
  %i.bh = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 16, i64 noundef 0, i64 noundef %i.bg, ptr noundef null, ptr noundef nonnull %i.a) #23 ; 19 uses
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !3
  %.not366 = icmp eq i32 %i.bi, 0
end_hunk_0
begin_hunk_1
bb.p:                                             ; preds = %bb.n, %bb.o
  %.0345 = phi ptr [ %i.dl, %bb.o ], [ null, %bb.n ] ; 3 uses
  %.0336 = phi i64 [ %i.dq, %bb.o ], [ %i.cw, %bb.n ]
  %i.dx = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 8, i64 noundef 0, i64 noundef %i.bg, ptr noundef null, ptr noundef nonnull %i.a) #23 ; 17 uses
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !3
  %.not375 = icmp eq i32 %i.dy, 0
  br i1 %.not375, label %bb.q, label %bb.ao

bb.q:                                             ; preds = %bb.p
  %i.dz = call ptr @ft_mem_realloc(ptr noundef %i.h, i64 noundef 8, i64 noundef 0, i64 noundef %i.bg, ptr noundef null, ptr noundef nonnull %i.a) #23 ; 20 uses
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !3
  %.not376 = icmp eq i32 %i.ea, 0
  br i1 %.not376, label %.preheader426, label %bb.ao
end_hunk_1
begin_hunk_2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 136 ; 3 uses
  %i.ex = shl nuw nsw i64 %i.bg, 3                ; 4 uses
  %scevgep600.a = getelementptr i8, ptr %i.dx, i64 %i.ex ; 6 uses
  %scevgep601.a = getelementptr i8, ptr %i.dz, i64 %i.ex ; 6 uses
  %i.ey = shl nuw nsw i64 %i.bg, 4                ; 2 uses
  %scevgep602 = getelementptr i8, ptr %i.bj, i64 %i.ey ; 2 uses
  %scevgep603 = getelementptr i8, ptr %i.bh, i64 %i.ey ; 2 uses
end_hunk_2
begin_hunk_3
  %n.vec627 = and i64 %i.bg, 4294967294           ; 3 uses
  %cmp.n638 = icmp eq i64 %n.vec627, %i.bg
  %min.iters.check585 = icmp ugt i16 %i.l, -5
  %bound0565 = icmp ult ptr %i.dx, %scevgep601.a
  %bound1566 = icmp ult ptr %i.dz, %scevgep600.a
  %found.conflict567 = and i1 %bound0565, %bound1566
  %n.vec588 = and i64 %i.bg, 4294967294           ; 3 uses
  %cmp.n597 = icmp eq i64 %n.vec588, %i.bg
end_hunk_3
begin_hunk_4
  br i1 %min.iters.check585, label %scalar.ph584.preheader, label %vector.memcheck560

vector.memcheck560:                               ; preds = %.lr.ph446
  %scevgep563 = getelementptr i8, ptr %i.ho, i64 %i.ex ; 2 uses
  %scevgep564 = getelementptr i8, ptr %i.hq, i64 %i.ex ; 2 uses
  %bound0568 = icmp ult ptr %i.dx, %scevgep563
  %bound1569 = icmp ult ptr %i.ho, %scevgep600.a
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %found.conflict567, %found.conflict570
  %bound0572 = icmp ult ptr %i.dx, %scevgep564
  %bound1573 = icmp ult ptr %i.hq, %scevgep600.a
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  %bound0576 = icmp ult ptr %i.dz, %scevgep563
  %bound1577 = icmp ult ptr %i.ho, %scevgep601.a
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575, %found.conflict578
  %bound0580 = icmp ult ptr %i.dz, %scevgep564
  %bound1581 = icmp ult ptr %i.hq, %scevgep601.a
  %found.conflict582 = and i1 %bound0580, %bound1581
  %conflict.rdx583 = or i1 %conflict.rdx579, %found.conflict582
  br i1 %conflict.rdx583, label %scalar.ph584.preheader, label %vector.ph586
end_hunk_4
