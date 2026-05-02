inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@vxprintf:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 16 uses
  %.not501 = trunc nuw i32 %1 to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@vxprintf:bb.a
  %i.cb = phi i1 [ false, %bb.y ], [ false, %.fold.split ], [ true, %.fold.split1693 ]
  %.0365701.lcssa.wide = phi i64 [ 20, %bb.y ], [ 21, %.fold.split ], [ 22, %.fold.split1693 ]
  %.lcssa804 = phi ptr [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 120), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 126), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 132), %.fold.split1693 ]
  br i1 %.not501, label %.thread1008, label %.thread610

.thread1008:                                      ; preds = %.thread1008.fold.split, %.thread1008.fold.split1675, %.thread1008.fold.split1676, %.thread1008.fold.split1677, %.thread1008.fold.split1678, %.thread1008.fold.split1679, %.thread1008.fold.split1680, %.thread1008.fold.split1681, %.thread1008.fold.split1682, %.thread1008.fold.split1683, %.thread1008.fold.split1684, %.thread1008.fold.split1685, %.thread1008.fold.split1686, %.thread1008.fold.split1687, %.thread1008.fold.split1688, %.thread1008.fold.split1689, %.thread1008.fold.split1690, %.thread1008.fold.split1691, %.thread1008.fold.split1692, %bb.y, %bb.z
  %.lcssa8041039 = phi ptr [ %.lcssa804, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 108), %.thread1008.fold.split1691 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 102), %.thread1008.fold.split1690 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 96), %.thread1008.fold.split1689 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 90), %.thread1008.fold.split1688 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 84), %.thread1008.fold.split1687 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 78), %.thread1008.fold.split1686 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 72), %.thread1008.fold.split1685 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 66), %.thread1008.fold.split1684 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 60), %.thread1008.fold.split1683 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 54), %.thread1008.fold.split1682 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 48), %.thread1008.fold.split1681 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 42), %.thread1008.fold.split1680 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 36), %.thread1008.fold.split1679 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 30), %.thread1008.fold.split1678 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 24), %.thread1008.fold.split1677 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 18), %.thread1008.fold.split1676 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 12), %.thread1008.fold.split1675 ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 6), %.thread1008.fold.split ], [ @fmtinfo, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @fmtinfo, i64 114), %.thread1008.fold.split1692 ] ; 5 uses
end_hunk_1
begin_hunk_2_@vxprintf:bb.a

._crit_edge765:                                   ; preds = %.lr.ph764.prol.loopexit, %et_getdigit.exit556.1, %.preheader652
  %.15.lcssa = phi ptr [ %.14.lcssa, %.preheader652 ], [ %.lcssa1792.unr, %.lr.ph764.prol.loopexit ], [ %i.nd, %et_getdigit.exit556.1 ] ; 2 uses
  %4 = trunc nuw i8 %i.kl to i1
  %or.cond7 = select i1 %.0406, i1 %4, i1 false
  br i1 %or.cond7, label %.preheader650, label %.loopexit651

end_hunk_2
begin_hunk_3_@sqlite3VdbeMakeReady:bb.a
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !142

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %5 = trunc nuw i32 %.155.i to i1
  %i.an = icmp eq i32 %.157.i, 0
  %.not91 = select i1 %5, i1 %i.an, i1 false
  br label %._crit_edge.i
end_hunk_3
begin_hunk_4_@sqlite3FindFunction:bb.a
  %i.bb = phi ptr [ null, %sqlite3HashFind.exit ], [ %i.ab, %bb.l ], [ %i.ab, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ]
  %.062.lcssa = phi ptr [ null, %sqlite3HashFind.exit ], [ %.264, %bb.l ], [ %spec.select76.us, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ] ; 2 uses
  %.060.lcssa = phi i32 [ 0, %sqlite3HashFind.exit ], [ %.2, %bb.l ], [ %spec.select77.us, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ]
  %6 = trunc nuw i32 %5 to i1                     ; 2 uses
  %i.bc = icmp slt i32 %.060.lcssa, 6
  %or.cond5 = select i1 %6, i1 %i.bc, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.r
end_hunk_4
begin_hunk_5_@sqlite3FindFunction:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.385, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !485
  %i.cd = icmp ne ptr %i.cc, null
  %or.cond7 = or i1 %i.cd, %6
  br i1 %or.cond7, label %bb.t, label %.thread

.thread:                                          ; preds = %sqlite3DbMallocRaw.exit.i, %bb.p, %bb.n, %bb.s, %bb.r
end_hunk_5
begin_hunk_6_@pager_playback:bb.a
  store i64 0, ptr %i.ab, align 8, !tbaa !648
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %2 = trunc nuw i32 %1 to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
end_hunk_6
begin_hunk_7_@pager_playback:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = phi i32 [ %i.at, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %3 = icmp ne i32 %i.au, 0
  %or.cond4 = select i1 %3, i1 true, i1 %2
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !648 ; 3 uses
  br i1 %or.cond4, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.pre100 = sext i32 %.pre99.pre to i64
end_hunk_7
begin_hunk_8_@pager_playback:bb.a

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre100, %._crit_edge ], [ %i.aw, %bb.j ], [ %i.aw, %bb.i ]
  %i.bg = phi i32 [ %i.au, %._crit_edge ], [ %i.bf, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.bh = icmp eq i64 %.pre, %.pre-phi
  br i1 %i.bh, label %bb.l, label %bb.q

end_hunk_8
begin_hunk_9_@sqlite3VdbeHalt:bb.a
  %.1111.lcssa = phi i32 [ %.1111.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0110156.epil.init, %.epil.preheader ], [ %i.bd, %bb.s ], [ %.0110156.epil.init, %bb.r ]
  %.1109.lcssa = phi i32 [ %.1109.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0108157.epil.init, %.epil.preheader ], [ %.0108157.epil.init, %bb.s ], [ 1, %bb.r ]
  %i.be = icmp ne i32 %.1111.lcssa, 0
  %1 = trunc nuw i32 %.1109.lcssa to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %switch.edge
end_hunk_9
begin_hunk_10_@sqlite3BtreeCursor:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !449
  store ptr null, ptr %5, align 8, !tbaa !326
  %6 = trunc nuw i32 %2 to i1                     ; 2 uses
  br i1 %6, label %bb.b, label %checkReadLocks.exit.thread.i

bb.b:                                             ; preds = %bb.a
end_hunk_10
begin_hunk_11_@sqlite3BtreeCursor:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !777
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond.i = and i1 %i.as, %6
  br i1 %or.cond.i, label %btreeCursor.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %checkReadLocks.exit.thread.i
end_hunk_11
begin_hunk_12_@sqlite3BtreeFactory:bb.a
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !1045
  %i.bj = trunc nuw i32 %2 to i1
  %i.bk = and i32 %i.d, 4096
  %.not31 = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !713 ; 2 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !1046
end_hunk_12
begin_hunk_13_@sqlite3BtreeFactory:bb.a
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !714
  %i.fe = call i32 %i.fd(ptr noundef nonnull %i.r, ptr noundef %i.ez, ptr noundef %i.fa, i32 noundef %i.fb, ptr noundef nonnull %i.a) #47, !inline_history !1051 ; 3 uses
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.fg = icmp ne i32 %i.fe, 0
  %i.fh = trunc i32 %i.ff to i1
  %or.cond3.i.i = select i1 %i.fg, i1 true, i1 %i.fh
end_hunk_13
begin_hunk_14_@sqlite3BtreeFactory:bb.a

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %6 = trunc i32 %i.ff to i8
  %7 = and i8 %6, 1                               ; 2 uses
  %i.fq = icmp eq i32 %i.fe, 0
  br i1 %i.fq, label %.thread201.i.i, label %.thread214.i.i

.thread201.i.i:                                   ; preds = %bb.ag, %.thread220.i.i, %bb.af, %bb.ae
  %.2210.i.i = phi i32 [ %.1155.ph.i.i, %.thread220.i.i ], [ 1024, %bb.ag ], [ 1024, %bb.ae ], [ 1024, %bb.af ] ; 2 uses
  %.0156209.i.i = phi i8 [ 0, %.thread220.i.i ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ 1, %bb.af ]
  %.0158207.i.i = phi i8 [ 0, %.thread220.i.i ], [ %7, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.af ]
  %i.fr = call ptr @sqlite3_malloc(i32 noundef %.2210.i.i)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dh, i64 296
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !704
end_hunk_14
begin_hunk_15_@sqlite3BtreeFactory:bb.a
  %i.ft = phi i32 [ %i.fe, %bb.ag ], [ 7, %.thread201.i.i ], [ 14, %bb.ab ]
  %.2211.i.i = phi i32 [ 1024, %bb.ag ], [ %.2210.i.i, %.thread201.i.i ], [ 1024, %bb.ab ]
  %.0156208.i.i = phi i8 [ 0, %bb.ag ], [ %.0156209.i.i, %.thread201.i.i ], [ 0, %bb.ab ] ; 3 uses
  %.0158206.i.i = phi i8 [ %7, %bb.ag ], [ %.0158207.i.i, %.thread201.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dh, i64 296
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !704
  %.not176.i.i = icmp eq ptr %i.fv, null
end_hunk_15
begin_hunk_16_@sqlite3BtreeFactory:bb.a
  %spec.select.i.i = zext i1 %narrow.i.i to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dh, i64 10
  store i8 %spec.select.i.i, ptr %i.gy, align 2, !tbaa !857
  %8 = select i1 %.not31, i8 0, i8 %.0158206.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dh, i64 11
  store i8 %8, ptr %i.gz, align 1, !tbaa !848
  %i.ha = add nsw i32 %.0157199.i.i, -1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !663
end_hunk_16
begin_hunk_17_@sqlite3BtreeFactory:bb.a
  %i.hh = trunc nuw nsw i32 %.0157199.i.i to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i8 %i.hh, ptr %i.hi, align 8, !tbaa !651
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i8 %.0158206.i.i, ptr %i.hj, align 4, !tbaa !881
  %.not180.i.i = icmp eq i8 %.0156208.i.i, 0
  %i.hk = trunc nuw nsw i32 %2 to i8
  %i.hl = select i1 %.not180.i.i, i8 %i.hk, i8 1  ; 2 uses
end_hunk_17
begin_hunk_18_@sqlite3StartTable:bb.a
  br i1 %.not126, label %sqlite3AuthCheck.exit.thread, label %sqlite3_free.exit

sqlite3AuthCheck.exit.thread:                     ; preds = %bb.n, %bb.m, %bb.o, %sqlite3AuthCheck.exit
  %.not130 = icmp eq i32 %5, 0
  br i1 %.not130, label %bb.t, label %bb.u

bb.t:                                             ; preds = %sqlite3AuthCheck.exit.thread
end_hunk_18
begin_hunk_19_@sqlite3StartTable:bb.a

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @sqlite3BeginWriteOperation(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %spec.select)
  %7 = trunc nuw i32 %5 to i1
  br i1 %7, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dh = tail call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %i.dg, i32 noundef 117) ; 0 uses
end_hunk_19
begin_hunk_20_@sqlite3TableLock:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1299
  %.not33 = icmp eq i8 %i.n, 0
  %5 = select i1 %.not33, i8 %3, i8 1
  store i8 %5, ptr %i.m, align 8, !tbaa !1299
  br label %bb.l

bb.e:                                             ; preds = %bb.b, %bb.c
end_hunk_20
begin_hunk_21_@sqlite3WhereBegin:bb.a
  %or.cond7 = phi i1 [ false, %bb.ov ], [ %spec.select797, %bb.oy ], [ false, %bb.ox ], [ false, %bb.ow ]
  %i.bxp = phi i1 [ true, %bb.ov ], [ %not., %bb.oy ], [ true, %bb.ox ], [ true, %bb.ow ] ; 3 uses
  %i.bxq = load i32, ptr %i.awg, align 4, !tbaa !1755 ; 5 uses
  %7 = trunc nuw i32 %.lobit..lobit757 to i1      ; 2 uses
  br i1 %7, label %bb.pa, label %disableTerm.exit1120

bb.pa:                                            ; preds = %bb.oz
end_hunk_21
begin_hunk_22_@sqlite3WhereBegin:bb.a
  %.06691485 = phi i32 [ %i.caj, %disableTerm.exit1120 ], [ 58, %disableTerm.exit1120.thread.loopexit ] ; 3 uses
  %.06771483.shrunk = phi i32 [ 1, %disableTerm.exit1120 ], [ %i.cak, %disableTerm.exit1120.thread.loopexit ]
  %i.cal = add nsw i32 %.lobit..lobit757, %i.bwr  ; 3 uses
  %or.cond9 = or i1 %i.bxp, %7
  %.pre1742 = load i32, ptr %i.auj, align 8, !tbaa !135 ; 4 uses
  %.pre1744 = load i32, ptr %i.aun, align 4, !tbaa !147 ; 7 uses
  br i1 %or.cond9, label %bb.ps, label %bb.pn
end_hunk_22
begin_hunk_23_@sqlite3WhereBegin:bb.a
sqlite3VdbeAddOp3.exit1151:                       ; preds = %sqlite3VdbeAddOp3.exit1151.sink.split, %resizeOpArray.exit.i.i1155, %resizeOpArray.exit.i1144, %buildIndexProbe.exit, %bb.qe
  %.06691484 = phi i32 [ 22, %bb.qe ], [ 22, %resizeOpArray.exit.i.i1155 ], [ %.06691485, %buildIndexProbe.exit ], [ %.06691485, %resizeOpArray.exit.i1144 ], [ %.06691484.ph, %sqlite3VdbeAddOp3.exit1151.sink.split ] ; 4 uses
  %.2679 = phi i32 [ 1, %bb.qe ], [ 1, %resizeOpArray.exit.i.i1155 ], [ %.1678, %buildIndexProbe.exit ], [ %.1678, %resizeOpArray.exit.i1144 ], [ %.2679.ph, %sqlite3VdbeAddOp3.exit1151.sink.split ]
  %8 = trunc nuw i32 %.lobit757..lobit to i1      ; 3 uses
  br i1 %8, label %bb.ql, label %disableTerm.exit1181

bb.ql:                                            ; preds = %sqlite3VdbeAddOp3.exit1151
end_hunk_23
begin_hunk_24_@sqlite3WhereBegin:bb.a

bb.qy:                                            ; preds = %disableTerm.exit1181
  %i.chq = add nsw i32 %.lobit757..lobit, %i.bwr  ; 3 uses
  %or.cond15 = or i1 %i.bxp, %8
  br i1 %or.cond15, label %bb.rf, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
end_hunk_24
begin_hunk_25_@processCompoundOrderBy:bb.a
  br i1 %i.bj, label %.lr.ph95, label %._crit_edge, !llvm.loop !1815

._crit_edge:                                      ; preds = %.lr.ph95._crit_edge
  %3 = trunc nuw i32 %.363 to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.15796, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1457 ; 2 uses
  %i.bm = icmp ne ptr %i.bl, null
end_hunk_25
begin_hunk_26_@sqlite3GenerateRowDelete:bb.a
sqlite3VdbeAddOp3.exit:                           ; preds = %resizeOpArray.exit.i, %bb.f
  %.0.i = phi i32 [ %i.d, %bb.f ], [ 0, %resizeOpArray.exit.i ] ; 3 uses
  tail call fastcc void @sqlite3GenerateRowIndexDelete(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  %.not = trunc nuw i32 %4 to i1
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !147 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.al, %i.ak
end_hunk_26
begin_hunk_27_@sqlite3GenerateRowDelete:bb.a
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.k
  br i1 %.not, label %bb.l, label %sqlite3VdbeChangeP4.exit

bb.l:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !402   ; 2 uses
end_hunk_27
begin_hunk_28_@sqlite3GenerateConstraintChecks:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 11 uses
  %9 = trunc nuw i32 %6 to i1                     ; 2 uses
  %10 = trunc nuw i32 %5 to i1
  %11 = and i32 %6, %5
  %i.c = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 82 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !254  ; 2 uses
end_hunk_28
begin_hunk_29_@sqlite3GenerateConstraintChecks:bb.a
  %.not215 = icmp eq i32 %7, 99
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %12 = sub nsw i32 %3, %11
  %i.qu = add i32 %2, 1
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.cv
end_hunk_29
begin_hunk_30_@xferOptimization:bb.a
bb.af:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.cy = load ptr, ptr %i.br, align 8, !tbaa !386
  %i.cz = icmp ne ptr %i.cy, null
  %5 = trunc nuw i32 %.0185.lcssa to i1
  %or.cond3 = select i1 %i.cz, i1 true, i1 %5
  br i1 %or.cond3, label %bb.ah, label %sqlite3VdbeJumpHere.exit

end_hunk_30
