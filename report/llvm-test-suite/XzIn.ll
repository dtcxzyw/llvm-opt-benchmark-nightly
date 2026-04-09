inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@Xz_ReadIndex:bb.a

.loopexit.i:                                      ; preds = %bb.j, %bb.h
  %.579.i = phi i64 [ %i.r, %bb.h ], [ %i.ae, %bb.j ] ; 7 uses
  %4 = sub i64 0, %.579.i
  %5 = and i64 %4, 3
  %6 = add i64 %5, %.579.i
  %i.ar = and i64 %.579.i, 3
  %.not87.i40 = icmp eq i64 %i.ar, 0
  br i1 %.not87.i40, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.as = add i64 %.579.i, 1                      ; 2 uses
  %i.at = and i64 %i.as, 3
  %.not87.i = icmp eq i64 %i.at, 0
  br i1 %.not87.i, label %._crit_edge, label %.lr.ph.1
end_hunk_0
begin_hunk_1_@Xz_ReadIndex:bb.a
  br i1 %.not88.i.1, label %bb.n, label %Xz_ReadIndex2.exit, !llvm.loop !53

bb.n:                                             ; preds = %.lr.ph.1
  %i.aw = add i64 %.579.i, 2                      ; 2 uses
  %i.ax = and i64 %i.aw, 3
  %.not87.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not87.i.1, label %._crit_edge, label %.lr.ph.2
end_hunk_1
begin_hunk_2_@Xz_ReadIndex:bb.a
  br i1 %.not88.i.2, label %bb.o, label %Xz_ReadIndex2.exit, !llvm.loop !53

bb.o:                                             ; preds = %.lr.ph.2
  %i.ba = add i64 %.579.i, 3                      ; 2 uses
  %i.bb = and i64 %i.ba, 3
  %.not87.i.2 = icmp eq i64 %i.bb, 0
  br i1 %.not87.i.2, label %._crit_edge, label %.lr.ph.3
end_hunk_2
begin_hunk_3_@Xz_ReadIndex:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not88.i.3 = icmp eq i8 %i.bd, 0
  br i1 %.not88.i.3, label %._crit_edge, label %Xz_ReadIndex2.exit, !llvm.loop !53

.lr.ph:                                           ; preds = %.loopexit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %.579.i
end_hunk_3
begin_hunk_4_@Xz_ReadIndex:bb.a
  %.not88.i = icmp eq i8 %i.bf, 0
  br i1 %.not88.i, label %bb.m, label %Xz_ReadIndex2.exit, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.m, %bb.n, %bb.o, %.lr.ph.3, %.loopexit.i
  %i.bg = icmp eq i64 %6, %i.j
  %i.bh = select i1 %i.bg, i32 0, i32 16
  br label %Xz_ReadIndex2.exit

end_hunk_4
