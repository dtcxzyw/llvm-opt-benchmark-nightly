inline.NumInlined: 280
inline.NumDeleted: 31
begin_hunk_0_@zsetAdd:bb.a
  br i1 %i.ff, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

.lr.ph.i.i:                                       ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fe to i64
  %i.fh = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !31
  %i.fk = icmp eq ptr %i.fj, %i.cx
  br i1 %i.fk, label %zslIncrNodeSpanAtLevel.exit.peel.i.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslIncrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %.lr.ph.i.i
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !31
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslDecrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i.i, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %i.fe, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.thread.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %zslDecrNodeSpanAtLevel.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %zslDecrNodeSpanAtLevel.exit.i.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i.i ] ; 7 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %indvars.iv.i.i ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !31
  %i.fr = icmp eq ptr %i.fq, %i.cx
  br i1 %i.fr, label %zslIncrNodeSpanAtLevel.exit.i.i, label %bb.bf

zslIncrNodeSpanAtLevel.exit.i.i:                  ; preds = %.peel.next.i.i
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = add i64 %i.fu, -1
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !26
  %i.fz = add i64 %i.fv, %i.fy
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !26
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31
  store ptr %i.gb, ptr %i.fp, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i.i

bb.bf:                                            ; preds = %.peel.next.i.i
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, -1
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i.i

zslDecrNodeSpanAtLevel.exit.i.i:                  ; preds = %bb.bf, %zslIncrNodeSpanAtLevel.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !143

._crit_edge.i.thread.i:                           ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %bb.be
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !31 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.gh, null
  %i.gi = load ptr, ptr %i.dk, align 8, !tbaa !29
  %..i37.i = select i1 %.not.i36.i, ptr %i.dj, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %..i37.i, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !29
  br label %zslUnlinkNode.exit.i

._crit_edge.i.i:                                  ; preds = %zslDecrNodeSpanAtLevel.exit.i.i
  %i.gk = load ptr, ptr %i.fg, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr %i.dk, align 8, !tbaa !29
  %..i.i = select i1 %.not.i.i, ptr %i.dj, ptr %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !29
  %i.gn = load ptr, ptr %i.dj, align 8, !tbaa !28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %._crit_edge.i.i
  %i.go = phi i32 [ %i.fe, %._crit_edge.i.i ], [ %i.gu, %bb.bh ] ; 3 uses
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr [16 x i8], ptr %i.gn, i64 %i.gp ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !31
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bh, label %zslUnlinkNode.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 0, ptr %i.gt, align 8, !tbaa !26
  %i.gu = add nsw i32 %i.go, -1                   ; 2 uses
  store i32 %i.gu, ptr %i.ea, align 8, !tbaa !18
  %i.gv = icmp sgt i32 %i.go, 2
  br i1 %i.gv, label %bb.bg, label %zslUnlinkNode.exit.i, !llvm.loop !144

zslUnlinkNode.exit.i:                             ; preds = %bb.bh, %bb.bg, %._crit_edge.i.thread.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !23
  %i.gy = add i64 %i.gx, -1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !23
  store double %.3, ptr %i.cx, align 8, !tbaa !16
  call fastcc void @zslInsertNode(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zslUpdateScore.exit

zslUpdateScore.exit:                              ; preds = %bb.bb, %zslUnlinkNode.exit.i
  %i.gz = load i32, ptr %4, align 4, !tbaa !9
  %i.ha = or i32 %i.gz, 8
  store i32 %i.ha, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.bi:                                            ; preds = %bb.am
  br i1 %.not100, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !103 ; 2 uses
  br label %.preheader.i121

.preheader.i121:                                  ; preds = %bb.bj, %.preheader.i121
  %.0.i.i = phi i32 [ %i.hf, %.preheader.i121 ], [ 1, %bb.bj ] ; 2 uses
  %i.hd = call i64 @random() #17
  %i.he = icmp slt i64 %i.hd, 536870911
  %i.hf = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.he, label %.preheader.i121, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i121
  %i.hg = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.hh = call fastcc ptr @zslCreateNode(ptr noundef %i.hc, i32 noundef %i.hg, double noundef %1, ptr noundef %2) ; 2 uses
  call fastcc void @zslInsertNode(ptr noundef %i.hc, ptr noundef %i.hh)
  %i.hi = load ptr, ptr %i.cr, align 8, !tbaa !107
  call void @dictSetKeyAtLink(ptr noundef %i.hi, ptr noundef %i.hh, ptr noundef nonnull %i.d, i32 noundef 1) #17
  %i.hj = load i32, ptr %4, align 4, !tbaa !9
  %i.hk = or i32 %i.hj, 4
  store i32 %i.hk, ptr %4, align 4, !tbaa !9
  %.not108 = icmp eq ptr %5, null
  br i1 %.not108, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %zslInsert.exit
  store double %1, ptr %5, align 8, !tbaa !16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.hl = load i32, ptr %4, align 4, !tbaa !9
  %i.hm = or i32 %i.hl, 1
  store i32 %i.hm, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.bm:                                            ; preds = %zslInsert.exit, %bb.bk, %bb.aw, %zslUpdateScore.exit, %bb.bl, %bb.at, %bb.ar, %bb.ao
  %.1 = phi i32 [ 1, %bb.ao ], [ 0, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %bb.bl ], [ 1, %zslUpdateScore.exit ], [ 1, %bb.bk ], [ 1, %zslInsert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.thread

bb.bn:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1742, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %bb.aj, %bb.ai, %bb.k, %bb.i, %bb.f, %bb.bm, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %.1, %bb.bm ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.k ], [ 0, %bb.i ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i32 %.2
}

declare ptr @dictFindLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @dictSetKeyAtLink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @zsetDel(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.e [
    i32 11, label %bb.b
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = tail call fastcc ptr @zzlFind(ptr noundef %i.g, ptr noundef %1, ptr noundef null) ; 2 uses
  %.not15.not = icmp eq ptr %i.h, null
  br i1 %.not15.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !tbaa !78
  %i.j = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.f, align 8, !tbaa !75
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = tail call fastcc i32 @zsetRemoveFromSkiplist(ptr noundef %i.l, ptr noundef %1)
  %.not = trunc nuw i32 %i.m to i1
  br i1 %.not, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1791, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.thread:                                          ; preds = %bb.b, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @zsetRemoveFromSkiplist(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107
  %i.d = tail call ptr @dictUnlink(ptr noundef %i.c, ptr noundef %1) #17 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dictGetKey(ptr noundef nonnull %i.d) #17 ; 12 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !107
  tail call void @dictFreeUnlinkedEntry(ptr noundef %i.f, ptr noundef nonnull %i.d) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.i = load double, ptr %i.e, align 8, !tbaa !16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !13
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.r = zext nneg i32 %i.p to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %zslCompareWithNode.exit.thread.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.r, %.preheader.preheader.i ], [ %indvars.iv.next.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %.034.i = phi ptr [ %i.n, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %.034.i, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %zslCompareWithNode.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.v = load double, ptr %i.t, align 8, !tbaa !16 ; 2 uses
  %i.w = fcmp olt double %i.i, %i.v
  br i1 %i.w, label %zslCompareWithNode.exit.thread.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %zslCompareWithNode.exit.thread22.i
  %i.x = load double, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %i.y = fcmp olt double %i.i, %i.x
  br i1 %i.y, label %zslCompareWithNode.exit.thread.i, label %.lr.ph, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.z = phi double [ %i.x, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ]
  %.126.i9 = phi ptr [ %i.aj, %.lr.ph.i ], [ %.034.i, %.lr.ph.i.preheader ]
  %i.aa = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.s, %.lr.ph.i.preheader ]
  %i.ab = phi ptr [ %i.al, %.lr.ph.i ], [ %i.t, %.lr.ph.i.preheader ] ; 3 uses
  %i.ac = fcmp ogt double %i.i, %i.z
  br i1 %i.ac, label %zslCompareWithNode.exit.thread22.i, label %zslCompareWithNode.exit.i

zslCompareWithNode.exit.i:                        ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !13
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = tail call i32 @sdscmp(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ag) #17
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i, label %zslCompareWithNode.exit.thread.i

zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i: ; preds = %zslCompareWithNode.exit.i
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread22.i

zslCompareWithNode.exit.thread22.i:               ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i, %.lr.ph
  %i.aj = phi ptr [ %.pre.i, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread22_crit_edge.i ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv.i ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !145

zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge: ; preds = %zslCompareWithNode.exit.thread22.i
  br label %zslCompareWithNode.exit.thread.i, !llvm.loop !145

zslCompareWithNode.exit.thread.i:                 ; preds = %.lr.ph.i, %zslCompareWithNode.exit.i, %.lr.ph.i.preheader, %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %.034.i, %.lr.ph.i.preheader ], [ %i.aj, %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.aj, %.lr.ph.i ], [ %.126.i9, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.an, align 8, !tbaa !29
  %i.ao = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %.preheader.i, label %._crit_edge.i, !llvm.loop !146

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.b
  %.0.lcssa.i = phi ptr [ %i.n, %bb.b ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 386) #17
  tail call void @abort() #18
  unreachable

bb.d:                                             ; preds = %._crit_edge.i
  %i.as = load i32, ptr %i.o, align 8, !tbaa !18  ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.as to i64
  %i.av = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %zslIncrNodeSpanAtLevel.exit.peel.i.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslIncrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %.lr.ph.i.i
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !31
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i.i

zslDecrNodeSpanAtLevel.exit.peel.i.i:             ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i.i, %.lr.ph.i.i
  %exitcond.peel.not.i.i = icmp eq i32 %i.as, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.thread.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %zslDecrNodeSpanAtLevel.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %zslDecrNodeSpanAtLevel.exit.i.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %zslIncrNodeSpanAtLevel.exit.i.i, label %bb.e

zslIncrNodeSpanAtLevel.exit.i.i:                  ; preds = %.peel.next.i.i
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = add i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bn = add i64 %i.bj, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  store ptr %i.bp, ptr %i.bd, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i.i

bb.e:                                             ; preds = %.peel.next.i.i
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i.i

zslDecrNodeSpanAtLevel.exit.i.i:                  ; preds = %bb.e, %zslIncrNodeSpanAtLevel.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !143

._crit_edge.i.thread.i:                           ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.i, %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %.not.i24.i = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29
  %..i25.i = select i1 %.not.i24.i, ptr %i.h, ptr %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %..i25.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !29
  br label %zslDelete.exit

._crit_edge.i.i:                                  ; preds = %zslDecrNodeSpanAtLevel.exit.i.i
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %..i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !29
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ce = phi i32 [ %i.as, %._crit_edge.i.i ], [ %i.ck, %bb.g ] ; 3 uses
end_hunk_0
begin_hunk_1_@genericZrangebyrankCommand:bb.a
bb.an:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds i8, ptr %i.es, i64 -17
  %i.fi = load i64, ptr %i.fh, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i153 = phi i64 [ %i.fi, %bb.an ], [ %i.ex, %bb.aj ], [ %i.fa, %bb.ak ], [ %i.fd, %bb.al ], [ %i.fg, %bb.am ], [ 0, %bb.ai ]
  %i.fj = load double, ptr %.1180, align 8, !tbaa !16
  tail call void %i.et(ptr noundef nonnull %0, ptr noundef nonnull %i.es, i64 noundef %.0.i153, double noundef %i.fj) #17
  %.in = getelementptr inbounds nuw i8, ptr %.1180, i64 %.in.v
  %i.fk = load ptr, ptr %.in, align 8, !tbaa !29
  %i.fl = add nsw i64 %i.eo, -1
  %.not99 = icmp eq i64 %i.eo, 0
  br i1 %.not99, label %.loopexit, label %bb.ag, !llvm.loop !231

bb.ao:                                            ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3476, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

.loopexit:                                        ; preds = %sdslen.exit, %zslGetElementByRank.exit, %._crit_edge
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !227
  call void %i.fn(ptr noundef nonnull %0, i64 noundef %i.ah) #17
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangestoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !224
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginStore, ptr %i.f, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeStore, ptr %i.g, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferForStore, ptr %i.h, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongForStore, ptr %i.i, align 8, !tbaa !228
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.j, align 8, !tbaa !232
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangeGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.zrangespec, align 8         ; 4 uses
  %6 = alloca %struct.zlexrangespec, align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.l = add nsw i32 %1, 1                        ; 2 uses
  %i.m = add nsw i32 %1, 2                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 -1, ptr %i.d, align 8, !tbaa !24
  %i.n = add nsw i32 %1, 3                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !163  ; 2 uses
  %.not135173 = icmp slt i32 %i.n, %i.p
  br i1 %.not135173, label %.lr.ph, label %.thread202

.thread202:                                       ; preds = %bb.a
  %spec.store.select11196 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %i.q = icmp eq i32 %3, 3
  br label %bb.n

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.r = phi i32 [ %i.p, %.lr.ph ], [ %i.as, %.thread ] ; 5 uses
  %.0177 = phi i32 [ %3, %.lr.ph ], [ %.2154, %.thread ] ; 4 uses
  %.0111176 = phi i32 [ %4, %.lr.ph ], [ %.2113153, %.thread ] ; 5 uses
  %.0118175 = phi i32 [ %i.n, %.lr.ph ], [ %i.at, %.thread ] ; 7 uses
  %.0121174 = phi i32 [ 0, %.lr.ph ], [ %.2123151, %.thread ] ; 4 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !149 ; 2 uses
  %i.s = sext i32 %.0118175 to i64                ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 5 uses
  br i1 %.not, label %bb.c, label %._crit_edge180

bb.c:                                             ; preds = %bb.b
  %i.x = call i32 @strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.45) #19
  %.not129 = icmp eq i32 %i.x, 0
  br i1 %.not129, label %.thread, label %._crit_edge180

._crit_edge180:                                   ; preds = %bb.b, %bb.c
  %i.y = call i32 @strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.46) #19
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = sub i32 %.0118175, %i.r
  %i.ab = icmp slt i32 %i.aa, -2
  %or.cond = and i1 %i.ab, %i.z
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge180
  %i.ac = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.s
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.af = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %i.f, ptr noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef null) #17
  %.not133 = icmp eq i32 %i.af, 0
  br i1 %.not133, label %bb.j, label %zslFreeLexRange.exit

bb.e:                                             ; preds = %._crit_edge180
  %i.ag = icmp eq i32 %.0111176, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.56) #19
  %.not130 = icmp eq i32 %i.ah, 0
  br i1 %.not130, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = icmp eq i32 %.0177, 0
  br i1 %i.ai, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aj = call i32 @strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.57) #19
  %.not131 = icmp eq i32 %i.aj, 0
  br i1 %.not131, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = call i32 @strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.58) #19
  %.not132 = icmp eq i32 %i.ak, 0
  br i1 %.not132, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.i
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %i.f, ptr noundef %i.al) #17
  br label %zslFreeLexRange.exit

bb.j:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.an = add nsw i32 %.0118175, 2                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !162
  %i.ar = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %i.f, ptr noundef %i.aq, ptr noundef nonnull %i.d, ptr noundef null) #17
  %.not134 = icmp eq i32 %i.ar, 0
  br i1 %.not134, label %..thread_crit_edge, label %zslFreeLexRange.exit

..thread_crit_edge:                               ; preds = %bb.j
  %.pre185 = load i32, ptr %i.o, align 8, !tbaa !163
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c, %bb.f, %bb.h, %bb.i
  %i.as = phi i32 [ %.pre185, %..thread_crit_edge ], [ %i.r, %bb.i ], [ %i.r, %bb.f ], [ %i.r, %bb.h ], [ %i.r, %bb.c ] ; 2 uses
  %.2154 = phi i32 [ %.0177, %..thread_crit_edge ], [ 2, %bb.i ], [ %.0177, %bb.f ], [ 3, %bb.h ], [ %.0177, %bb.c ] ; 5 uses
  %.2113153 = phi i32 [ %.0111176, %..thread_crit_edge ], [ %.0111176, %bb.i ], [ 2, %bb.f ], [ %.0111176, %bb.h ], [ %.0111176, %bb.c ] ; 2 uses
  %.2120152 = phi i32 [ %i.an, %..thread_crit_edge ], [ %.0118175, %bb.i ], [ %.0118175, %bb.f ], [ %.0118175, %bb.h ], [ %.0118175, %bb.c ]
  %.2123151 = phi i32 [ %.0121174, %..thread_crit_edge ], [ %.0121174, %bb.i ], [ %.0121174, %bb.f ], [ %.0121174, %bb.h ], [ 1, %bb.c ] ; 3 uses
  %i.at = add nsw i32 %.2120152, 1                ; 2 uses
  %.not135 = icmp slt i32 %i.at, %i.as
  br i1 %.not135, label %bb.b, label %._crit_edge, !llvm.loop !233

._crit_edge:                                      ; preds = %.thread
  %.pre186 = load i64, ptr %i.d, align 8, !tbaa !24
  %i.au = icmp ne i64 %.pre186, -1
  %i.av = icmp ult i32 %.2154, 2
  %or.cond4 = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  call void @addReplyError(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.59) #17
  br label %zslFreeLexRange.exit

bb.l:                                             ; preds = %._crit_edge
  %spec.store.select11 = call i32 @llvm.umax.i32(i32 %.2154, i32 1)
  %7 = trunc nuw i32 %.2123151 to i1
  %i.aw = icmp eq i32 %.2154, 3                   ; 2 uses
  %or.cond6 = select i1 %7, i1 %i.aw, i1 false
  br i1 %or.cond6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @addReplyError(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.60) #17
  br label %zslFreeLexRange.exit

bb.n:                                             ; preds = %.thread202, %bb.l
  %i.ax = phi i1 [ %i.q, %.thread202 ], [ %i.aw, %bb.l ]
  %.0121.lcssa198211 = phi i32 [ 0, %.thread202 ], [ %.2123151, %bb.l ]
  %.0111.lcssa199210 = phi i32 [ %4, %.thread202 ], [ %.2113153, %bb.l ]
  %.0.lcssa200209 = phi i32 [ %3, %.thread202 ], [ %.2154, %bb.l ]
  %spec.store.select11201208 = phi i32 [ %spec.store.select11196, %.thread202 ], [ %spec.store.select11, %bb.l ] ; 2 uses
  %i.ay = icmp eq i32 %.0111.lcssa199210, 2       ; 4 uses
  %i.az = and i32 %.0.lcssa200209, -2
  %or.cond8 = icmp eq i32 %i.az, 2
  %or.cond144 = select i1 %i.ay, i1 %or.cond8, i1 false ; 2 uses
  %.0126 = select i1 %or.cond144, i32 %i.l, i32 %i.m ; 3 uses
  %.0115 = select i1 %or.cond144, i32 %i.m, i32 %i.l ; 3 uses
  switch i32 %spec.store.select11201208, label %bb.u [
    i32 3, label %bb.s
    i32 1, label %bb.o
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.bb = sext i32 %.0115 to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !162
  %i.be = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %i.f, ptr noundef %i.bd, ptr noundef nonnull %i.a, ptr noundef null) #17
  %.not138 = icmp eq i32 %i.be, 0
  br i1 %.not138, label %bb.p, label %zslFreeLexRange.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.bg = sext i32 %.0126 to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !162
  %i.bj = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %i.f, ptr noundef %i.bi, ptr noundef nonnull %i.b, ptr noundef null) #17
  %.not139 = icmp eq i32 %i.bj, 0
  br i1 %.not139, label %bb.u, label %zslFreeLexRange.exit

bb.q:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !149 ; 2 uses
  %i.bl = sext i32 %.0115 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !162
  %i.bo = sext i32 %.0126 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !162
  %i.br = call fastcc i32 @zslParseRange(ptr noundef %i.bn, ptr noundef %i.bq, ptr noundef %5)
  %.not137 = icmp eq i32 %i.br, 0
  br i1 %.not137, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @addReplyError(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.30) #17
  br label %zslFreeLexRange.exit

bb.s:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !149 ; 2 uses
  %i.bt = sext i32 %.0115 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !162
  %i.bw = sext i32 %.0126 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !162
  %i.bz = call i32 @zslParseLexRange(ptr noundef %i.bv, ptr noundef %i.by, ptr noundef nonnull %6)
  %.not136 = icmp eq i32 %i.bz, 0
  br i1 %.not136, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @addReplyError(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.32) #17
  br label %zslFreeLexRange.exit

bb.u:                                             ; preds = %bb.s, %bb.q, %bb.p, %bb.n
  %.not140 = icmp eq i32 %2, 0
  %i.ca = or i32 %.0121.lcssa198211, %2
  %or.cond10 = icmp ne i32 %i.ca, 0               ; 3 uses
  br i1 %or.cond10, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.cb, align 8, !tbaa !234
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !215
  %i.cf = icmp sgt i32 %i.ce, 2
  %i.cg = zext i1 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !235
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !166
  %i.ck = call ptr @lookupKeyRead(ptr noundef %i.cj, ptr noundef %i.k) #17 ; 8 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not140, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !226
  call void %i.cn(ptr noundef %0, i64 noundef -1) #17
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !227
  call void %i.cp(ptr noundef %0, i64 noundef 0) #17
  br label %bb.aj

bb.z:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  call void @addReply(ptr noundef nonnull %i.f, ptr noundef %i.cq) #17
  br label %bb.aj

bb.aa:                                            ; preds = %bb.w
  %i.cr = call i32 @checkType(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ck, i32 noundef 3) #17
  %.not141 = icmp eq i32 %i.cr, 0
  br i1 %.not141, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not142 = icmp eq i32 %i.cs, 0
  br i1 %.not142, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = call i64 @kvobjAllocSize(ptr noundef nonnull %i.ck) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0125 = phi i64 [ %i.ct, %bb.ac ], [ 0, %bb.ab ]
  switch i32 %spec.store.select11201208, label %bb.ah [
    i32 3, label %bb.ag
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !24
  %i.cw = zext i1 %or.cond10 to i32
  %i.cx = zext i1 %i.ay to i32
  call void @genericZrangebyrankCommand(ptr noundef %0, ptr noundef nonnull %i.ck, i64 noundef %i.cu, i64 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx)
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !24
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !24
  %i.da = zext i1 %i.ay to i32
  call void @genericZrangebyscoreCommand(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ck, i64 noundef %i.cy, i64 noundef %i.cz, i32 noundef %i.da)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.db = zext i1 %or.cond10 to i32
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !24
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !24
  %i.de = zext i1 %i.ay to i32
  call void @genericZrangebylexCommand(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.ck, i32 noundef %i.db, i64 noundef %i.dc, i64 noundef %i.dd, i32 noundef %i.de)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not143 = icmp eq i32 %i.df, 0
  br i1 %.not143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load ptr, ptr %i.ci, align 8, !tbaa !166
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !75
  %i.dj = call i32 @getKeySlot(ptr noundef %i.di) #17
  %i.dk = call i64 @kvobjAllocSize(ptr noundef nonnull %i.ck) #17
  call void @updateSlotAllocSize(ptr noundef %i.dg, i32 noundef %i.dj, ptr noundef nonnull %i.ck, i64 noundef %.0125, i64 noundef %i.dk) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.aa, %bb.y, %bb.z
  br i1 %i.ax, label %bb.ak, label %zslFreeLexRange.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.dl, %i.dm
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.dl, %i.dn
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @sdsfree(ptr noundef %i.dl) #17
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71
  %.pre11.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.do = phi ptr [ %.pre11.i, %bb.al ], [ %i.dn, %bb.ak ]
  %i.dp = phi ptr [ %.pre.i, %bb.al ], [ %i.dm, %bb.ak ]
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !74 ; 3 uses
end_hunk_1
