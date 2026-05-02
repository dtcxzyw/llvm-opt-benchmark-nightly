inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@addHintForArguments:bb.a
hi_sdslen.exit.i:                                 ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.at, %bb.m ], [ %i.ai, %bb.i ], [ %i.al, %bb.j ], [ %i.ao, %bb.k ], [ %i.ar, %bb.l ]
  %i.au = icmp ule i64 %.0.i.i, %.075100
  %or.cond.i = or i1 %i.ac, %i.au
  br i1 %or.cond.i, label %addSeparator.exit, label %bb.n

bb.n:                                             ; preds = %hi_sdslen.exit.i
end_hunk_0
begin_hunk_1_@addHintForArguments:bb.a
hi_sdslen.exit.i59:                               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i.i60 = phi i64 [ %i.cp, %bb.ab ], [ %i.ce, %bb.x ], [ %i.ch, %bb.y ], [ %i.ck, %bb.z ], [ %i.cn, %bb.aa ]
  %i.cq = icmp ule i64 %.0.i.i60, %.17681
  %or.cond.i61 = or i1 %i.aa, %i.cq
  br i1 %or.cond.i61, label %addSeparator.exit65, label %bb.ac

bb.ac:                                            ; preds = %hi_sdslen.exit.i59
end_hunk_1
begin_hunk_2_@addHintForArguments:bb.a
hi_sdslen.exit.i66:                               ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i67 = phi i64 [ %i.en, %bb.ao ], [ %i.ec, %bb.ak ], [ %i.ef, %bb.al ], [ %i.ei, %bb.am ], [ %i.el, %bb.an ]
  %i.eo = icmp ule i64 %.0.i.i67, %.37893
  %or.cond.i68 = or i1 %i.dw, %i.eo
  br i1 %or.cond.i68, label %addSeparator.exit72, label %bb.ap

bb.ap:                                            ; preds = %hi_sdslen.exit.i66
end_hunk_2
begin_hunk_3_@clusterManagerCheckCluster:bb.a

bb.gx:                                            ; preds = %bb.gw
  %i.agp = call fastcc i32 @clusterManagerMoveSlot(ptr noundef nonnull %i.afy, ptr noundef nonnull %.038.i, i32 noundef range(i32 -2147483648, 16384) %i.aex, i32 noundef 130, ptr noundef null)
  %.not51.not.not.i = icmp eq i32 %i.agp, 0
  br i1 %.not51.not.not.i, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %.backedge.i

.backedge.i:                                      ; preds = %bb.gx, %bb.gw, %bb.gr, %.lr.ph377
  %.033.be.i = phi i32 [ 1, %bb.gx ], [ %.033.i375, %bb.gr ], [ %.033.i375, %.lr.ph377 ], [ 1, %bb.gw ] ; 2 uses
end_hunk_3
begin_hunk_4_@getKeySizes:bb.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not66 = icmp eq i32 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_4
begin_hunk_5_@getKeySizes:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %.not66, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.w = icmp eq i64 %4, -1
end_hunk_5
begin_hunk_6_@getKeySizes:bb.a
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.split.us.split, label %.preheader, !llvm.loop !566

.preheader:                                       ; preds = %bb.j, %bb.c, %bb.m
  %i.bx = phi i64 [ %i.ak, %bb.c ], [ %i.cq, %bb.m ], [ %i.bt, %bb.j ] ; 2 uses
  %.not68 = icmp eq i64 %i.bx, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %5 = icmp ne i32 %3, 0                          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.n

end_hunk_6
begin_hunk_7_@getKeySizes:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !365
  %i.da = icmp ne ptr %i.cz, null
  %or.cond3 = or i1 %5, %i.da
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_7
begin_hunk_8_@getKeySizes:bb.a

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !13
  br i1 %5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !28
end_hunk_8
