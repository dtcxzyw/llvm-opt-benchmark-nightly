inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@zslCreateNode:bb.a
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = add nsw i64 %i.v, 16                     ; 3 uses
  %i.x = add i64 %.0.i, %.0.i28
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = add i64 %i.y, %i.w
  %i.aa = call ptr @zmalloc_usable(i64 noundef %i.z, ptr noundef nonnull %i.a) #18 ; 6 uses
  store double %2, ptr %i.aa, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@zslInsertNode:bb.a
zslSetNodeSpanAtLevel.exit81.peel:                ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.b, align 16            ; 2 uses
  %wide.trip.count120 = zext i8 %i.i to i64
  %i.cx = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@zslInsertNode:bb.a
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv117
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !26
  %i.dz = sub i64 %i.cw, %i.dv
  %2 = add i64 %i.dz, 1
  store i64 %2, ptr %i.ds, align 8, !tbaa !26
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.preheader, label %zslSetNodeSpanAtLevel.exit81, !llvm.loop !42
end_hunk_2
begin_hunk_3_@zslNthInRange:bb.a

._crit_edge315:                                   ; preds = %.lr.ph298.split.us, %.critedge2, %bb.j
  %.199.lcssa = phi ptr [ %.098.lcssa, %bb.j ], [ %.199312, %.lr.ph298.split.us ], [ %.2100.lcssa, %.critedge2 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa246, %bb.j ], [ %.1314, %.lr.ph298.split.us ], [ %.2.lcssa, %.critedge2 ]
  %i.cs = add nsw i64 %.1.lcssa, %2               ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !23
  %.not118 = icmp ult i64 %i.cs, %i.cu
end_hunk_3
begin_hunk_4_@zslNthInRange:bb.a
  br i1 %niter.ncmp.7, label %zslGetElementByRankFromNode.exit.unr-lcssa, label %.lr.ph321, !llvm.loop !54

bb.n:                                             ; preds = %bb.m
  %i.do = sub i64 %i.cs, %.0.lcssa246
  %i.dp = add i64 %i.do, 1                        ; 7 uses
  %i.dq = icmp sgt i32 %.fr323, 0
  br i1 %i.dq, label %.preheader.preheader.i, label %zslIsInRange.exit.thread

end_hunk_4
begin_hunk_5_@zslNthInRange:bb.a

bb.p:                                             ; preds = %zslGetElementByRankFromNode.exit.thread186
  %.not214 = icmp eq ptr %3, null
  br i1 %.not214, label %zslIsInRange.exit.thread, label %zslIsInRange.exit.thread.sink.split

.preheader219:                                    ; preds = %.preheader219.lr.ph, %.critedge5
  %indvars.iv = phi i64 [ %i.bh, %.preheader219.lr.ph ], [ %indvars.iv.next, %.critedge5 ] ; 6 uses
end_hunk_5
begin_hunk_6_@zslNthInRange:bb.a
  br i1 %exitcond.not, label %zslGetElementByRankFromNode.exit171, label %.lr.ph293, !llvm.loop !62

bb.s:                                             ; preds = %bb.r
  %4 = sub i64 %2, %.0.lcssa246
  %5 = add i64 %4, %.3.lcssa
  %i.gd = add i64 %5, 1                           ; 7 uses
  br i1 %i.bg, label %.preheader.preheader.i141, label %zslIsInRange.exit.thread

.preheader.preheader.i141:                        ; preds = %bb.s
end_hunk_6
begin_hunk_7_@zslNthInRange:bb.a
  br i1 %.not211, label %zslIsInRange.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hi = add nsw i64 %2, %.3.lcssa
  br label %zslIsInRange.exit.thread.sink.split

zslIsInRange.exit.thread.sink.split:              ; preds = %bb.p, %bb.v
  %.sink = phi i64 [ %i.hi, %bb.v ], [ %i.cs, %bb.p ]
  %.0103.ph = phi ptr [ %.8206, %bb.v ], [ %.4102188, %bb.p ]
  %6 = add nsw i64 %.sink, 1
  store i64 %6, ptr %3, align 8, !tbaa !24
  br label %zslIsInRange.exit.thread

zslIsInRange.exit.thread:                         ; preds = %bb.t, %bb.o, %zslIsInRange.exit.thread.sink.split, %.critedge.i155.thread, %.critedge.thread.i169, %bb.s, %zslGetElementByRankFromNode.exit171, %.critedge.i.thread, %.critedge.thread.i, %bb.n, %zslGetElementByRankFromNode.exit, %bb.f, %bb.c, %bb.d, %bb.e, %bb.a, %bb.g, %bb.p, %bb.u, %zslGetElementByRankFromNode.exit171.thread204, %._crit_edge, %zslGetElementByRankFromNode.exit.thread186, %._crit_edge315, %zslIsInRange.exit
end_hunk_7
begin_hunk_8_@zslNthInLexRange:bb.a

._crit_edge381:                                   ; preds = %.critedge2, %bb.aj
  %.199.lcssa = phi ptr [ %.098.lcssa, %bb.aj ], [ %.2100.lcssa, %.critedge2 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa292, %bb.aj ], [ %.2.lcssa, %.critedge2 ]
  %i.fw = add nsw i64 %.1.lcssa, %2               ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !23
  %.not118 = icmp ult i64 %i.fw, %i.fy
end_hunk_8
begin_hunk_9_@zslNthInLexRange:bb.a
  br i1 %niter.ncmp.7, label %zslGetElementByRankFromNode.exit.unr-lcssa, label %.lr.ph387, !llvm.loop !84

bb.bb:                                            ; preds = %bb.ba
  %i.gs = sub i64 %i.fw, %.0.lcssa292
  %i.gt = add i64 %i.gs, 1                        ; 7 uses
  %i.gu = load i32, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.preheader.preheader.i, label %zslIsInLexRange.exit.thread
end_hunk_9
begin_hunk_10_@zslNthInLexRange:bb.a

zslLexValueLteMax.exit.thread:                    ; preds = %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %zslLexValueLteMax.exit
  %.not260 = icmp eq ptr %3, null
  br i1 %.not260, label %zslIsInLexRange.exit.thread, label %zslIsInLexRange.exit.thread.sink.split

bb.bm:                                            ; preds = %.critedge
  %i.ix = icmp sgt i32 %.fr391, 0
end_hunk_10
begin_hunk_11_@zslNthInLexRange:bb.a
  br i1 %exitcond.not, label %zslGetElementByRankFromNode.exit183, label %.lr.ph349, !llvm.loop !89

bb.cg:                                            ; preds = %bb.cf
  %4 = sub i64 %2, %.0.lcssa292
  %5 = add i64 %4, %.3.lcssa
  %i.lu = add i64 %5, 1                           ; 7 uses
  %i.lv = load i32, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.preheader.preheader.i153, label %zslIsInLexRange.exit.thread
end_hunk_11
begin_hunk_12_@zslNthInLexRange:bb.a
  br i1 %.not257, label %zslIsInLexRange.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %zslLexValueGteMin.exit191.thread248
  %i.nt = add nsw i64 %2, %.3.lcssa
  br label %zslIsInLexRange.exit.thread.sink.split

zslIsInLexRange.exit.thread.sink.split:           ; preds = %zslLexValueLteMax.exit.thread, %bb.cq
  %.sink = phi i64 [ %i.nt, %bb.cq ], [ %i.fw, %zslLexValueLteMax.exit.thread ]
  %.0103.ph = phi ptr [ %.8244, %bb.cq ], [ %.4102218, %zslLexValueLteMax.exit.thread ]
  %6 = add nsw i64 %.sink, 1
  store i64 %6, ptr %3, align 8, !tbaa !24
  br label %zslIsInLexRange.exit.thread

zslIsInLexRange.exit.thread:                      ; preds = %bb.ch, %bb.bc, %zslIsInLexRange.exit.thread.sink.split, %bb.bl, %.critedge.i167.thread, %.critedge.thread.i181, %bb.cg, %zslGetElementByRankFromNode.exit183, %bb.cn, %bb.ck, %bb.cj, %bb.ci, %bb.co, %.critedge.i.thread, %.critedge.thread.i, %bb.bb, %zslGetElementByRankFromNode.exit, %bb.bk, %bb.bd, %bb.bg, %bb.p, %bb.s, %bb.w, %bb.x, %zslLexValueLteMax.exit.i, %bb.i, %bb.h, %bb.g, %bb.m, %bb.l, %bb.d, %zslLexValueGteMin.exit.i, %sdscmplex.exit.thread.thread40.i, %bb.e, %sdscmplex.exit.thread.thread.i, %sdscmplex.exit.i, %zslLexValueGteMin.exit.thread30.i, %zslLexValueLteMax.exit.thread, %zslLexValueGteMin.exit191.thread248, %zslLexValueGteMin.exit191, %._crit_edge, %zslLexValueLteMax.exit, %._crit_edge381
end_hunk_12
begin_hunk_13_@zsetAllocSize:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %1 = tail call i64 @dictMemUsage(ptr noundef %i.l) #18
  %2 = add i64 %i.p, %1
  %i.q = add i64 %2, 72
  br label %bb.g

bb.f:                                             ; preds = %bb.c
end_hunk_13
begin_hunk_14_@zsetAdd:bb.a
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !26
  %6 = add i64 %i.fu, %i.fx
  %i.fy = add i64 %6, -1
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !31
end_hunk_14
begin_hunk_15_@zsetRemoveFromSkiplist:bb.a
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !26
  %2 = add i64 %i.bi, %i.bl
  %i.bm = add i64 %2, -1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !31
end_hunk_15
begin_hunk_16_@zaddGenericCommand:bb.a
  br i1 %i.ar, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %.thread203
  %i.ce = zext nneg i32 %i.ai to i64
  %invariant.op = add i32 %.0170.lcssa, 1
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph258, %bb.ai
end_hunk_16
begin_hunk_17_@zaddGenericCommand:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !149
  %indvars.iv272.tr = trunc i64 %indvars.iv272 to i32
  %2 = shl i32 %indvars.iv272.tr, 1
  %.reass = add i32 %2, %invariant.op
  %3 = sext i32 %.reass to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %3
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !162
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !75
end_hunk_17
begin_hunk_18_@zaddGenericCommand:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %i.ce
  br i1 %exitcond276.not, label %._crit_edge259.loopexit, label %bb.af, !llvm.loop !168

._crit_edge259.loopexit:                          ; preds = %bb.ai
end_hunk_18
begin_hunk_19_@zslDeleteRangeByRank:bb.a
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.274, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26
  %4 = add i64 %i.bk, %i.bn
  %i.bo = add i64 %4, -1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
end_hunk_19
begin_hunk_20_@zslDeleteRangeByScore:bb.a
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.244, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !26
  %3 = add i64 %i.as, %i.av
  %i.aw = add i64 %3, -1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
end_hunk_20
begin_hunk_21_@zslDeleteRangeByLex:bb.a
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.271, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %3 = add i64 %i.ce, %i.ch
  %i.ci = add i64 %3, -1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !31
end_hunk_21
begin_hunk_22_@zdiff:bb.a
  %i.et = shl nuw nsw i32 %i.dz, 4
  %narrow.us.i = add nuw nsw i32 %i.et, 16
  %i.eu = zext nneg i32 %narrow.us.i to i64       ; 3 uses
  %i.ev = add i64 %.0.i.i36.us.i, %.0.i28.i.us.i
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  %i.ex = add i64 %i.ew, %i.eu
  %i.ey = call ptr @zmalloc_usable(i64 noundef %i.ex, ptr noundef nonnull %i.a) #18 ; 7 uses
  store double %i.du, ptr %i.ey, align 8, !tbaa !16
end_hunk_22
begin_hunk_23_@zlexcountCommand:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !24
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, 1                              ; 2 uses
  %i.ar = call ptr @zslNthInLexRange(ptr noundef %i.am, ptr noundef nonnull %1, i64 noundef -1, ptr noundef nonnull %i.a)
  %.not36 = icmp eq ptr %i.ar, null
  br i1 %.not36, label %bb.t, label %bb.s
end_hunk_23
begin_hunk_24_@zlexcountCommand:bb.a
bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.at = load i64, ptr %i.a, align 8, !tbaa !24
  %.neg = sub i64 %3, %i.as
  %i.au = add i64 %.neg, %i.at
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.2 = phi i64 [ %i.au, %bb.s ], [ %3, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

end_hunk_24
