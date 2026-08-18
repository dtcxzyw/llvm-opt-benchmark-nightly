inline.NumInlined: 280
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zsetAdd:bb.a
bb.af:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.ag:                                            ; preds = %sdslen.exit119
  %i.cg = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.ch = call ptr @zzlInsert(ptr noundef %i.cg, ptr noundef nonnull %2, double noundef %1)
  store ptr %i.ch, ptr %i.n, align 8, !tbaa !75
  %.not105 = icmp eq ptr %5, null
  br i1 %.not105, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store double %1, ptr %5, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ci = load i32, ptr %4, align 4, !tbaa !9
  %i.cj = or i32 %i.ci, 4
  store i32 %i.cj, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.aj:                                            ; preds = %bb.p
  %i.ck = load i32, ptr %4, align 4, !tbaa !9
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %4, align 4, !tbaa !9
  br label %.thread

bb.ak:                                            ; preds = %bb.ae, %bb.ad
  %.0.i120 = phi i64 [ %i.ca, %bb.ad ], [ %i.cf, %bb.ae ]
  %i.cm = add i64 %.0.i120, 1
  call void @zsetConvertAndExpand(ptr noundef nonnull %0, i32 noundef 7, i64 noundef %i.cm)
  %.pre131 = load i64, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.c
  %i.cn = phi i64 [ %.pre131, %bb.ak ], [ %i.k, %bb.c ]
  %i.co = and i64 %i.cn, 240
  %i.cp = icmp eq i64 %i.co, 112
  br i1 %i.cp, label %bb.am, label %bb.bn

bb.am:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = call ptr @dictFindLink(ptr noundef %i.cs, ptr noundef %2, ptr noundef nonnull %i.d) #17 ; 2 uses
  %.not107 = icmp eq ptr %i.ct, null
  br i1 %.not107, label %bb.bi, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not99, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = load i32, ptr %4, align 4, !tbaa !9
  %i.cv = or i32 %i.cu, 1
  store i32 %i.cv, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.ap:                                            ; preds = %bb.an
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !139
  %i.cx = call ptr @dictGetKey(ptr noundef %i.cw) #17 ; 15 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !16 ; 4 uses
  br i1 %.not, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cz = fadd double %1, %i.cy                   ; 2 uses
  %i.da = fcmp uno double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i32, ptr %4, align 4, !tbaa !9
  %i.dc = or i32 %i.db, 2
  store i32 %i.dc, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.3 = phi double [ %i.cz, %bb.aq ], [ %1, %bb.ap ] ; 8 uses
  %i.dd = fcmp ult double %.3, %i.cy
  %or.cond114 = select i1 %.not102, i1 true, i1 %i.dd
  %i.de = fcmp ugt double %.3, %i.cy
  %or.cond116 = select i1 %.not101, i1 true, i1 %i.de
  %or.cond127 = select i1 %or.cond114, i1 %or.cond116, i1 false
  br i1 %or.cond127, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.df = load i32, ptr %4, align 4, !tbaa !9
  %i.dg = or i32 %i.df, 1
  store i32 %i.dg, ptr %4, align 4, !tbaa !9
  br label %bb.bm

bb.au:                                            ; preds = %bb.as
  %.not109 = icmp eq ptr %5, null
  br i1 %.not109, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double %.3, ptr %5, align 8, !tbaa !16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dh = fcmp une double %.3, %i.cy
  br i1 %i.dh, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !103 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !16
  %i.do = fcmp olt double %i.dn, %.3
  br i1 %i.do, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !16
  %i.dt = fcmp ogt double %i.ds, %.3
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %.3, ptr %i.cx, align 8, !tbaa !16
  br label %zslUpdateScore.exit

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.du = load double, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !13
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dx
  %i.dz = load ptr, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !18 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.bc
  %i.ed = zext nneg i32 %i.eb to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %zslCompareWithNode.exit.thread.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.ed, %.preheader.preheader.i ], [ %indvars.iv.next.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %.02946.i = phi ptr [ %i.dz, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ee = getelementptr [16 x i8], ptr %.02946.i, i64 %indvars.iv.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %zslCompareWithNode.exit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !16 ; 2 uses
  %i.ei = fcmp olt double %i.du, %i.eh
  br i1 %i.ei, label %zslCompareWithNode.exit.thread.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %zslCompareWithNode.exit.thread34.i
  %i.ej = load double, ptr %i.ex, align 8, !tbaa !16 ; 2 uses
  %i.ek = fcmp olt double %i.du, %i.ej
  br i1 %i.ek, label %zslCompareWithNode.exit.thread.i, label %.lr.ph, !llvm.loop !141

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.el = phi double [ %i.ej, %.lr.ph.i ], [ %i.eh, %.lr.ph.i.preheader ]
  %.138.i128 = phi ptr [ %i.ev, %.lr.ph.i ], [ %.02946.i, %.lr.ph.i.preheader ]
  %i.em = phi ptr [ %i.ew, %.lr.ph.i ], [ %i.ee, %.lr.ph.i.preheader ]
  %i.en = phi ptr [ %i.ex, %.lr.ph.i ], [ %i.ef, %.lr.ph.i.preheader ] ; 3 uses
  %i.eo = fcmp ogt double %i.du, %i.el
  br i1 %i.eo, label %zslCompareWithNode.exit.thread34.i, label %zslCompareWithNode.exit.i

zslCompareWithNode.exit.i:                        ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.er = zext i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.er
  %i.et = call i32 @sdscmp(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.es) #17
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i, label %zslCompareWithNode.exit.thread.i

zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i: ; preds = %zslCompareWithNode.exit.i
  %.pre.i = load ptr, ptr %i.em, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread34.i

zslCompareWithNode.exit.thread34.i:               ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i, %.lr.ph
  %i.ev = phi ptr [ %.pre.i, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread34_crit_edge.i ], [ %i.en, %.lr.ph ] ; 4 uses
  %i.ew = getelementptr [16 x i8], ptr %i.ev, i64 %indvars.iv.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !141

zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge: ; preds = %zslCompareWithNode.exit.thread34.i
  br label %zslCompareWithNode.exit.thread.i, !llvm.loop !141

zslCompareWithNode.exit.thread.i:                 ; preds = %.lr.ph.i, %zslCompareWithNode.exit.i, %.lr.ph.i.preheader, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.02946.i, %.preheader.i ], [ %.02946.i, %.lr.ph.i.preheader ], [ %i.ev, %zslCompareWithNode.exit.thread34.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.ev, %.lr.ph.i ], [ %.138.i128, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.ez, align 8, !tbaa !29
  %i.fa = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.fa, label %.preheader.i, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.bc
  %.029.lcssa.i = phi ptr [ %i.dz, %bb.bc ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %i.fd = icmp eq ptr %i.fc, %i.cx
  br i1 %i.fd, label %bb.be, label %bb.bd, !prof !34

bb.bd:                                            ; preds = %._crit_edge.i
  call void @_serverAssert(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 423) #17
  call void @abort() #18
  unreachable

bb.be:                                            ; preds = %._crit_edge.i
  %i.fe = load i32, ptr %i.ea, align 8, !tbaa !18 ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 0
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
  %.not16.not = icmp eq ptr %i.h, null
  br i1 %.not16.not, label %.thread, label %bb.c

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
  %.not.not = icmp eq i32 %i.m, 0
  br i1 %.not.not, label %.thread, label %bb.f

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
  %.01934.i = phi ptr [ %i.n, %.preheader.preheader.i ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.s = getelementptr [16 x i8], ptr %.01934.i, i64 %indvars.iv.i ; 2 uses
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
  %.126.i9 = phi ptr [ %i.aj, %.lr.ph.i ], [ %.01934.i, %.lr.ph.i.preheader ]
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
  %.1.lcssa.i = phi ptr [ %.01934.i, %.preheader.i ], [ %.01934.i, %.lr.ph.i.preheader ], [ %i.aj, %zslCompareWithNode.exit.thread22.i.zslCompareWithNode.exit.thread.i.loopexit_crit_edge ], [ %i.aj, %.lr.ph.i ], [ %.126.i9, %zslCompareWithNode.exit.i ] ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store ptr %.1.lcssa.i, ptr %i.an, align 8, !tbaa !29
  %i.ao = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %.preheader.i, label %._crit_edge.i, !llvm.loop !146

._crit_edge.i:                                    ; preds = %zslCompareWithNode.exit.thread.i, %bb.b
  %.019.lcssa.i = phi ptr [ %i.n, %bb.b ], [ %.1.lcssa.i, %zslCompareWithNode.exit.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.lcssa.i, i64 16
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
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr [16 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.g, label %zslDelete.exit

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !26
  %i.ck = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.o, align 8, !tbaa !18
  %i.cl = icmp sgt i32 %i.ce, 2
  br i1 %i.cl, label %bb.f, label %zslDelete.exit, !llvm.loop !144

zslDelete.exit:                                   ; preds = %bb.f, %bb.g, %._crit_edge.i.thread.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
  %i.cs = sub i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %zslDelete.exit
  %.0 = phi i32 [ 1, %zslDelete.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zsetRank(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load i64, ptr %0, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = and i32 %i.h, 15
  switch i32 %i.i, label %bb.d [
    i32 11, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = tail call i64 @lpLength(ptr noundef %i.k) #17
  %i.m = lshr i64 %i.l, 1
  %i.n = and i64 %i.m, 4294967295
  %.pre = load i64, ptr %0, align 8
  %.pre77 = trunc i64 %.pre to i32
  %.pre78 = lshr i32 %.pre77, 4
  br label %zsetLength.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  br label %zsetLength.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.pre-phi79 = phi i32 [ %.pre78, %bb.b ], [ %i.h, %bb.c ]
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = and i32 %.pre-phi79, 15
  switch i32 %i.u, label %bb.ag [
    i32 11, label %bb.e
    i32 7, label %bb.y
  ]

bb.e:                                             ; preds = %zsetLength.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 4 uses
  %i.x = tail call ptr @lpSeek(ptr noundef %i.w, i64 noundef 0) #17 ; 3 uses
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %bb.f, label %bb.g, !prof !91

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1818) #17
  tail call void @abort() #18
  unreachable

bb.g:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@zzlDeleteRangeByScore:bb.a
  br i1 %i.f, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.024 = phi i64 [ 0, %.preheader ], [ %i.w, %bb.f ] ; 3 uses
  %.01623 = phi ptr [ %0, %.preheader ], [ %i.v, %bb.f ] ; 4 uses
  %i.i = phi ptr [ %i.e, %.preheader ], [ %.pr, %bb.f ]
  %i.j = call ptr @lpNext(ptr noundef %.01623, ptr noundef nonnull %i.i) #17 ; 2 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.k = call ptr @lpGetValue(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.l, i32 127)
  %i.m = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !36
  %i.o = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !92
  %i.q = sitofp i64 %i.p to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.r = load i32, ptr %i.g, align 4, !tbaa !48
  %.not.i22 = icmp eq i32 %i.r, 0
  %i.s = load double, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.t = fcmp uge double %.0.i, %i.s
  %i.u = fcmp ugt double %.0.i, %i.s
  %.in.i = select i1 %.not.i22, i1 %i.u, i1 %i.t
  br i1 %.in.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %zzlGetScore.exit
  %i.v = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01623, ptr noundef nonnull %i.d, i64 noundef 2) #17 ; 2 uses
  %i.w = add i64 %.024, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !175

.critedge:                                        ; preds = %bb.b, %zzlGetScore.exit, %bb.f
  %.016.lcssa = phi ptr [ %.01623, %bb.b ], [ %.01623, %zzlGetScore.exit ], [ %i.v, %bb.f ]
  %.0.lcssa = phi i64 [ %.024, %bb.b ], [ %.024, %zzlGetScore.exit ], [ %i.w, %bb.f ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge
  %.015 = phi ptr [ %.016.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlDeleteRangeByLex(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %2, align 8, !tbaa !24
  %i.b = tail call ptr @zzlFirstInLexRange(ptr noundef %0, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.020 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %.01419 = phi ptr [ %i.h, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.pr, %bb.c ], [ %i.b, %bb.a ]
  %i.e = call ptr @lpNext(ptr noundef %.01419, ptr noundef nonnull %i.d) #17
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.g = call i32 @zzlLexValueLteMax(ptr noundef %i.f, ptr noundef nonnull %1)
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01419, ptr noundef nonnull %i.a, i64 noundef 2) #17 ; 2 uses
  %i.i = add i64 %.020, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !176

.critedge:                                        ; preds = %.preheader, %bb.b, %bb.c
  %.014.lcssa = phi ptr [ %.01419, %.preheader ], [ %.01419, %bb.b ], [ %i.h, %bb.c ]
  %.0.lcssa = phi i64 [ %.020, %.preheader ], [ %.020, %bb.b ], [ %i.i, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.013 = phi ptr [ %.014.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByRank(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 3 uses
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 6 uses
  %.068 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 6 uses
  %.03466 = phi i64 [ 0, %.preheader.lr.ph ], [ %.135.lcssa, %.critedge ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.j = getelementptr [16 x i8], ptr %.068, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not44 = icmp eq i64 %indvars.iv, 1
  br i1 %.not44, label %.lr.ph.split.us, label %zslGetNodeSpanAtLevel.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i.us61 = icmp ne ptr %i.l, null
  %i.m = zext i1 %.not.i.us61 to i64
  %i.n = add i64 %.03466, %i.m
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %.thread.us, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.068, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge.loopexit

zslGetNodeSpanAtLevel.exit.thread.us:             ; preds = %.thread.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not.i.us = icmp ne ptr %i.r, null
  %i.s = zext i1 %.not.i.us to i64
  %i.t = add i64 %i.y, %i.s
  %i.u = icmp ult i64 %i.t, %i.g
  br i1 %i.u, label %.thread.us, label %.critedge, !llvm.loop !177

.thread.us:                                       ; preds = %.lr.ph.split.us, %zslGetNodeSpanAtLevel.exit.thread.us
  %i.v = phi ptr [ %i.r, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.l, %.lr.ph.split.us ]
  %.13546.us62 = phi i64 [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %.03466, %.lr.ph.split.us ]
  %i.w = phi ptr [ %i.aa, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.k, %.lr.ph.split.us ] ; 4 uses
  %.not.i37.us = icmp ne ptr %i.v, null
  %i.x = zext i1 %.not.i37.us to i64
  %i.y = add i64 %.13546.us62, %i.x               ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not.us = icmp eq ptr %i.aa, null
  br i1 %.not.us, label %.critedge, label %zslGetNodeSpanAtLevel.exit.thread.us, !llvm.loop !177

zslGetNodeSpanAtLevel.exit:                       ; preds = %.lr.ph, %zslGetNodeSpanAtLevel.exit39
  %i.ab = phi ptr [ %i.ai, %zslGetNodeSpanAtLevel.exit39 ], [ %i.k, %.lr.ph ] ; 3 uses
  %.147 = phi ptr [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.068, %.lr.ph ] ; 2 uses
  %.13546 = phi i64 [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.03466, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.147, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = add i64 %i.ae, %.13546                  ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.g
  br i1 %i.ag, label %zslGetNodeSpanAtLevel.exit39, label %.critedge

zslGetNodeSpanAtLevel.exit39:                     ; preds = %zslGetNodeSpanAtLevel.exit
  %i.ah = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.critedge, label %zslGetNodeSpanAtLevel.exit, !llvm.loop !177

.critedge:                                        ; preds = %zslGetNodeSpanAtLevel.exit, %zslGetNodeSpanAtLevel.exit39, %.thread.us, %zslGetNodeSpanAtLevel.exit.thread.us, %.preheader
  %.135.lcssa = phi i64 [ %.03466, %.preheader ], [ %i.y, %.thread.us ], [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.13546, %zslGetNodeSpanAtLevel.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.068, %.preheader ], [ %i.w, %.thread.us ], [ %i.w, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.147, %zslGetNodeSpanAtLevel.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %.critedge, %.critedge.thread
  %.1.lcssa96 = phi ptr [ %.068, %.critedge.thread ], [ %.1.lcssa, %.critedge ]
  %.135.lcssa95 = phi i64 [ %.03466, %.critedge.thread ], [ %.135.lcssa, %.critedge ]
  %i.al = add i64 %.135.lcssa95, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi i64 [ 1, %bb.a ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa96, %._crit_edge.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = zext i32 %2 to i64                      ; 2 uses
  %i.ap = icmp ne ptr %i.an, null
  %i.aq = icmp ule i64 %.034.lcssa, %i.ao
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge
  %i.as = load ptr, ptr %i.b, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %zslUnlinkNode.exit
  %.23675 = phi i64 [ %.034.lcssa, %.lr.ph77 ], [ %.236, %zslUnlinkNode.exit ] ; 2 uses
  %.274 = phi ptr [ %i.an, %.lr.ph77 ], [ %i.ax, %zslUnlinkNode.exit ] ; 9 uses
  %.03373 = phi i64 [ 0, %.lr.ph77 ], [ %i.cx, %zslUnlinkNode.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.274, i64 16 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 4 uses
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.bb = icmp eq ptr %i.ba, %.274
  br i1 %i.bb, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ay, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = icmp eq ptr %i.bg, %.274
  br i1 %i.bh, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.c

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.274, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.bp = add i64 %i.bl, %i.bo
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.c:                                             ; preds = %.peel.next.i
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.c, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.b
  %i.bw = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.ax, %bb.b ] ; 2 uses
  %.not.i4042 = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %..i43 = select i1 %.not.i4042, ptr %0, ptr %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %..i43, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %.not.i40 = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %..i = select i1 %.not.i40, ptr %0, ptr %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !29
  %i.ce = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i
  %i.cf = phi i32 [ %i.ay, %._crit_edge.i ], [ %i.cl, %bb.e ] ; 3 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr [16 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.e, label %zslUnlinkNode.exit

bb.e:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !26
  %i.cl = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.d, align 8, !tbaa !18
  %i.cm = icmp sgt i32 %i.cf, 2
  br i1 %i.cm, label %bb.d, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.d, %bb.e, %._crit_edge.i.thread
  %i.cn = load i64, ptr %i.au, align 8, !tbaa !23
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.au, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.274, i64 24
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !13
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.274, i64 %i.cr
  %i.ct = call i32 @dictDelete(ptr noundef %3, ptr noundef nonnull %i.cs) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.274, ptr noundef nonnull %i.a) #17
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cv = load i64, ptr %i.av, align 8, !tbaa !25
  %i.cw = sub i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.av, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cx = add nuw nsw i64 %.03373, 1              ; 2 uses
  %.236 = add nuw nsw i64 %.23675, 1
  %i.cy = icmp ne ptr %i.ax, null
  %i.cz = icmp ult i64 %.23675, %i.ao
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %bb.b, label %._crit_edge78, !llvm.loop !179

._crit_edge78:                                    ; preds = %zslUnlinkNode.exit, %._crit_edge
  %.033.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cx, %zslUnlinkNode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.033.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByScore(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.040 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1, %.critedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.040, %.preheader ] ; 4 uses
  %i.i = getelementptr [16 x i8], ptr %.1, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.j, align 8, !tbaa !16 ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load double, ptr %1, align 8, !tbaa !47  ; 2 uses
  %i.n = fcmp ule double %i.k, %i.m
  %i.o = fcmp ult double %i.k, %i.m
  %.in.i = select i1 %.not.i, i1 %i.o, i1 %i.n
  br i1 %.in.i, label %bb.b, label %.critedge, !llvm.loop !180

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1, ptr %i.p, align 8, !tbaa !29
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.preheader, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1, %.critedge ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.b, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %zslUnlinkNode.exit
  %.244 = phi ptr [ %i.s, %.lr.ph ], [ %i.af, %zslUnlinkNode.exit ] ; 10 uses
  %.02943 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %zslUnlinkNode.exit ] ; 2 uses
  %i.z = load double, ptr %.244, align 8, !tbaa !16 ; 2 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !48
  %.not.i34 = icmp eq i32 %i.aa, 0
  %i.ab = load double, ptr %i.u, align 8, !tbaa !49 ; 2 uses
  %i.ac = fcmp uge double %i.z, %i.ab
  %i.ad = fcmp ugt double %i.z, %i.ab
  %.in.i35 = select i1 %.not.i34, i1 %i.ad, i1 %i.ac
  br i1 %.in.i35, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.244, i64 16 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 4 uses
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.aj = icmp eq ptr %i.ai, %.244
  br i1 %i.aj, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.af, ptr %i.w, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ag, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq ptr %i.ao, %.244
  br i1 %i.ap, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.f

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.244, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = add i64 %i.as, -1
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26
  %i.ax = add i64 %i.at, %i.aw
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  store ptr %i.az, ptr %i.an, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.f:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.f, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.e
  %i.be = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.af, %bb.e ] ; 2 uses
  %.not.i3637 = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i38 = select i1 %.not.i3637, ptr %0, ptr %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %..i38, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %..i = select i1 %.not.i36, ptr %0, ptr %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !29
  %i.bm = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge.i
  %i.bn = phi i32 [ %i.ag, %._crit_edge.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.h, label %zslUnlinkNode.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !26
  %i.bt = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.d, align 8, !tbaa !18
  %i.bu = icmp sgt i32 %i.bn, 2
  br i1 %i.bu, label %bb.g, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.g, %bb.h, %._crit_edge.i.thread
  %i.bv = load i64, ptr %i.x, align 8, !tbaa !23
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %.244, i64 24
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !13
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.244, i64 %i.bz
  %i.cb = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.ca) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.244, ptr noundef nonnull %i.a) #17
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cd = load i64, ptr %i.y, align 8, !tbaa !25
  %i.ce = sub i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.y, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cf = add i64 %.02943, 1                      ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge2, label %bb.d, !llvm.loop !182

.critedge2:                                       ; preds = %bb.d, %zslUnlinkNode.exit, %._crit_edge
  %.029.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cf, %zslUnlinkNode.exit ], [ %.02943, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.029.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByLex(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.066 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %.066, i64 %indvars.iv ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not3251 = icmp eq ptr %i.j, null
  br i1 %.not3251, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %zslLexValueGteMin.exit.thread
  %i.k = phi ptr [ %i.ai, %zslLexValueGteMin.exit.thread ], [ %i.j, %.preheader ] ; 7 uses
  %i.l = phi ptr [ %i.ah, %zslLexValueGteMin.exit.thread ], [ %i.i, %.preheader ]
  %.152 = phi ptr [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.066, %.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i16, ptr %i.m, align 2, !tbaa !13
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 6 uses
  %i.q = load i32, ptr %i.g, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %1, align 8, !tbaa !68     ; 6 uses
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %zslLexValueGteMin.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %zslLexValueGteMin.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.w = icmp eq ptr %i.r, %i.v
  br i1 %i.w, label %zslLexValueGteMin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.p, %i.v
  %i.y = icmp eq ptr %i.r, %i.t
  %or.cond.i.i = or i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %.critedge, label %zslLexValueGteMin.exit

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.aa = icmp eq ptr %i.p, %i.z
  br i1 %i.aa, label %zslLexValueGteMin.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %zslLexValueGteMin.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %i.p, %i.ab
  %i.ae = icmp eq ptr %i.r, %i.z
  %or.cond.i5.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i5.i, label %.critedge, label %zslLexValueGteMin.exit

zslLexValueGteMin.exit:                           ; preds = %bb.e, %bb.i
  %.sink14.i = phi i32 [ 0, %bb.e ], [ -1, %bb.i ]
  %i.af = tail call i32 @sdscmp(ptr noundef nonnull %i.p, ptr noundef %i.r) #17
  %.not50 = icmp sgt i32 %i.af, %.sink14.i
  br i1 %.not50, label %.critedge, label %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge

zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge: ; preds = %zslLexValueGteMin.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !31
  br label %zslLexValueGteMin.exit.thread

zslLexValueGteMin.exit.thread:                    ; preds = %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge, %bb.g, %bb.d, %bb.c, %bb.b, %bb.h
  %i.ag = phi ptr [ %.pre, %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge ], [ %i.k, %bb.g ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.h ] ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not32 = icmp eq ptr %i.ai, null
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !183

.critedge:                                        ; preds = %zslLexValueGteMin.exit, %zslLexValueGteMin.exit.thread, %bb.e, %bb.i, %bb.f, %.preheader
  %.1.lcssa = phi ptr [ %.066, %.preheader ], [ %.152, %bb.f ], [ %.152, %bb.i ], [ %.152, %bb.e ], [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.152, %zslLexValueGteMin.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa, %.critedge ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not69 = icmp eq ptr %i.am, null
  br i1 %.not69, label %.critedge2, label %.lr.ph73

.lr.ph73:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.b, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph73, %zslUnlinkNode.exit
  %.271 = phi ptr [ %i.am, %.lr.ph73 ], [ %i.br, %zslUnlinkNode.exit ] ; 10 uses
  %.02970 = phi i64 [ 0, %.lr.ph73 ], [ %i.dq, %zslUnlinkNode.exit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.271, i64 24 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !13
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.271, i64 %i.av ; 7 uses
  %i.ax = load i32, ptr %i.an, align 4, !tbaa !80
  %.not.i34 = icmp eq i32 %i.ax, 0
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !74 ; 7 uses
  %i.az = icmp eq ptr %i.aw, %i.ay                ; 2 uses
  br i1 %.not.i34, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.az, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.bb = icmp eq ptr %i.aw, %i.ba
  br i1 %i.bb, label %zslLexValueLteMax.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bd = icmp eq ptr %i.ay, %i.bc
  br i1 %i.bd, label %zslLexValueLteMax.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq ptr %i.aw, %i.bc
  %i.bf = icmp eq ptr %i.ay, %i.ba
  %or.cond.i.i35 = or i1 %i.bf, %i.be
  br i1 %or.cond.i.i35, label %.critedge2, label %zslLexValueLteMax.exit

bb.o:                                             ; preds = %bb.j
  br i1 %i.az, label %zslLexValueLteMax.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.bh = icmp eq ptr %i.aw, %i.bg
  br i1 %i.bh, label %zslLexValueLteMax.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bj = icmp eq ptr %i.ay, %i.bi
  br i1 %i.bj, label %zslLexValueLteMax.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = icmp eq ptr %i.aw, %i.bi
  %i.bl = icmp eq ptr %i.ay, %i.bg
  %or.cond.i5.i36 = or i1 %i.bl, %i.bk
  br i1 %or.cond.i5.i36, label %.critedge2, label %.split

.split:                                           ; preds = %bb.r
  %i.bm = call i32 @sdscmp(ptr noundef nonnull %i.aw, ptr noundef %i.ay) #17
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit:                           ; preds = %bb.n
  %i.bo = call i32 @sdscmp(ptr noundef nonnull %i.aw, ptr noundef %i.ay) #17
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit.thread:                    ; preds = %.split, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %zslLexValueLteMax.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.271, i64 16 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 4 uses
  %i.bs = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %zslLexValueLteMax.exit.thread
  %wide.trip.count.i = zext nneg i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.bv = icmp eq ptr %i.bu, %.271
  br i1 %i.bv, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.br, ptr %i.aq, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.bs, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre83 = load ptr, ptr %i.bq, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv.i ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = icmp eq ptr %i.ca, %.271
  br i1 %i.cb, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.s

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.271, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, -1
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.cj = add i64 %i.cf, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  store ptr %i.cl, ptr %i.bz, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.s:                                             ; preds = %.peel.next.i
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cp = add i64 %i.co, -1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.s, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %zslLexValueLteMax.exit.thread
  %i.cq = phi ptr [ %.pre83, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.br, %zslLexValueLteMax.exit.thread ] ; 2 uses
  %.not.i3748 = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  %..i49 = select i1 %.not.i3748, ptr %0, ptr %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %..i49, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.cu = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !29
  %..i = select i1 %.not.i37, ptr %0, ptr %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !29
  %i.cy = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %._crit_edge.i
  %i.cz = phi i32 [ %i.bs, %._crit_edge.i ], [ %i.df, %bb.u ] ; 3 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr [16 x i8], ptr %i.cy, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.u, label %zslUnlinkNode.exit

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !26
  %i.df = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.df, ptr %i.d, align 8, !tbaa !18
  %i.dg = icmp sgt i32 %i.cz, 2
  br i1 %i.dg, label %bb.t, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.t, %bb.u, %._crit_edge.i.thread
  %i.dh = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.di = add i64 %i.dh, -1
  store i64 %i.di, ptr %i.ar, align 8, !tbaa !23
  %i.dj = load i16, ptr %i.at, align 8, !tbaa !13
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.271, i64 %i.dk
  %i.dm = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.dl) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.271, ptr noundef nonnull %i.a) #17
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !24
  %i.do = load i64, ptr %i.as, align 8, !tbaa !25
  %i.dp = sub i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.as, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dq = add i64 %.02970, 1                      ; 2 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %.critedge2, label %bb.j, !llvm.loop !185

end_hunk_1
begin_hunk_2_@genericZrangebyrankCommand:bb.a
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.v, %bb.c ] ; 6 uses
  %i.w = icmp slt i64 %2, 0
  %i.x = select i1 %i.w, i64 %.0.i, i64 0
  %spec.select = add nsw i64 %i.x, %2             ; 3 uses
  %i.y = icmp slt i64 %3, 0
  %i.z = select i1 %i.y, i64 %.0.i, i64 0
  %.084 = add nsw i64 %i.z, %3                    ; 3 uses
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 0) ; 7 uses
  %i.aa = icmp sle i64 %spec.store.select, %.084
  %.not = icmp slt i64 %spec.store.select, %.0.i
  %or.cond = select i1 %i.aa, i1 %.not, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %zsetLength.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !226
  tail call void %i.ac(ptr noundef nonnull %0, i64 noundef 0) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !227
  tail call void %i.ae(ptr noundef nonnull %0, i64 noundef 0) #17
  br label %bb.ap

bb.f:                                             ; preds = %zsetLength.exit
  %.not95 = icmp samesign ult i64 %.084, %.0.i
  %i.af = add nsw i64 %.0.i, -1
  %spec.select105 = select i1 %.not95, i64 %.084, i64 %i.af
  %i.ag = sub nsw i64 %spec.select105, %spec.store.select ; 3 uses
  %i.ah = add nsw i64 %i.ag, 1                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226
  tail call void %i.aj(ptr noundef nonnull %0, i64 noundef %i.ah) #17
  %i.ak = load i64, ptr %1, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 4
  %i.an = and i32 %i.am, 15
  switch i32 %i.an, label %bb.ao [
    i32 11, label %bb.g
    i32 7, label %bb.z
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %.not101 = icmp eq i32 %5, 0                    ; 2 uses
  %i.aq = shl nuw nsw i64 %spec.store.select, 1   ; 2 uses
  %i.ar = sub nuw nsw i64 -2, %i.aq
  %.sink = select i1 %.not101, i64 %i.aq, i64 %i.ar
  %i.as = tail call ptr @lpSeek(ptr noundef %i.ap, i64 noundef %.sink) #17 ; 3 uses
  %.not102 = icmp eq ptr %i.as, null
  br i1 %.not102, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 3431) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.at = tail call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %i.as) #17
  %.not103182 = icmp eq i64 %i.ah, 0
  br i1 %.not103182, label %._crit_edge, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.i
  %.not104 = icmp eq i32 %4, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph186, %zzlPrev.exit
  %i.aw = phi i64 [ %i.ag, %.lr.ph186 ], [ %i.bs, %zzlPrev.exit ] ; 2 uses
  %.079185 = phi double [ 0.000000e+00, %.lr.ph186 ], [ %.180, %zzlPrev.exit ]
  %.0160184 = phi ptr [ %i.at, %.lr.ph186 ], [ %.1161, %zzlPrev.exit ] ; 3 uses
  %.0162183 = phi ptr [ %i.as, %.lr.ph186 ], [ %.1163, %zzlPrev.exit ] ; 3 uses
  %i.ax = icmp ne ptr %.0162183, null
  %i.ay = icmp ne ptr %.0160184, null
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false, !prof !34
  br i1 %i.az, label %bb.l, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 3435) #17
  call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = call ptr @lpGetValue(ptr noundef nonnull %.0162183, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  br i1 %.not104, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.bb = call ptr @lpGetValue(ptr noundef nonnull %.0160184, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.bb, null
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.bc, i32 127)
  %i.bd = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.bb, i64 %i.bd, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  store i8 0, ptr %i.be, align 1, !tbaa !36
  %i.bf = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !92
  %i.bh = sitofp i64 %i.bg to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.n, %bb.o
  %.0.i106 = phi double [ %i.bf, %bb.n ], [ %i.bh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

bb.p:                                             ; preds = %zzlGetScore.exit, %bb.l
  %.180 = phi double [ %.0.i106, %zzlGetScore.exit ], [ %.079185, %bb.l ] ; 3 uses
  %i.bi = icmp eq ptr %i.ba, null
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !228
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bj(ptr noundef nonnull %0, i64 noundef %i.bk, double noundef %.180) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !229
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bn = zext i32 %i.bm to i64
  call void %i.bl(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bn, double noundef %.180) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not101, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = call ptr @lpPrev(ptr noundef %i.ap, ptr noundef nonnull %.0162183) #17 ; 3 uses
  %.not14.i = icmp eq ptr %i.bo, null
  br i1 %.not14.i, label %zzlPrev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call ptr @lpPrev(ptr noundef %i.ap, ptr noundef nonnull %i.bo) #17 ; 2 uses
  %.not15.i = icmp eq ptr %i.bp, null
  br i1 %.not15.i, label %bb.v, label %zzlPrev.exit, !prof !91

bb.v:                                             ; preds = %bb.u
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  call void @abort() #18
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.bq = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %.0160184) #17 ; 3 uses
  %.not14.i111 = icmp eq ptr %i.bq, null
  br i1 %.not14.i111, label %zzlPrev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call ptr @lpNext(ptr noundef %i.ap, ptr noundef nonnull %i.bq) #17 ; 2 uses
  %.not15.i112 = icmp eq ptr %i.br, null
  br i1 %.not15.i112, label %bb.y, label %zzlPrev.exit, !prof !91

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

zzlPrev.exit:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.1163 = phi ptr [ null, %bb.t ], [ %i.bp, %bb.u ], [ null, %bb.w ], [ %i.bq, %bb.x ]
  %.1161 = phi ptr [ null, %bb.t ], [ %i.bo, %bb.u ], [ null, %bb.w ], [ %i.br, %bb.x ]
  %i.bs = add nsw i64 %i.aw, -1
  %.not103 = icmp eq i64 %i.aw, 0
  br i1 %.not103, label %._crit_edge, label %bb.j, !llvm.loop !230

._crit_edge:                                      ; preds = %zzlPrev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 5 uses
  %.not96 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not96, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %.not98 = icmp slt i64 %spec.select, 1
  br i1 %.not98, label %zslGetElementByRank.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = sub nsw i64 %.0.i, %spec.store.select   ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.preheader.i.i, label %zslGetElementByRank.exit

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %i.cd = add nsw i32 %i.cb, -1
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.cf = zext nneg i32 %i.cd to i64
  br label %.preheader.i.i

bb.ac:                                            ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.cg = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.cg, label %.preheader.i.i, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cf, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 6 uses
  %.01845.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %.1.lcssa.i.i, %bb.ac ] ; 4 uses
  %.01944.i.i = phi ptr [ %i.ce, %.preheader.preheader.i.i ], [ %.120.lcssa.i.i, %bb.ac ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01944.i.i, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i = icmp eq ptr %i.cj, null
  br i1 %.not29.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.not28.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not28.i.i, label %.lr.ph.split.us.i.i, label %zslGetNodeSpanAtLevel.exit.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !31
  %.not.i.us40.i.i = icmp ne ptr %i.ck, null
  %i.cl = zext i1 %.not.i.us40.i.i to i64
  %i.cm = add i64 %.01845.i.i, %i.cl              ; 4 uses
  %.not2227.us41.i.i = icmp ugt i64 %i.cm, %i.bz
  br i1 %.not2227.us41.i.i, label %.critedge.thread.i.i, label %.thread.us.i.preheader.i

.thread.us.i.preheader.i:                         ; preds = %.lr.ph.split.us.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i = icmp eq ptr %i.co, null
  %6 = add i64 %i.cm, 1
  %.not2227.us.i.peel.i = icmp ugt i64 %6, %i.bz
  %or.cond.i.peel.i = or i1 %.not2227.us.i.peel.i, %.not.us.i.peel.i
  br i1 %or.cond.i.peel.i, label %.critedge.i.thread.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %.thread.us.i.preheader.i, %.thread.us.i.i
  %.131.us42.i.i = phi i64 [ %i.cq, %.thread.us.i.i ], [ %i.cm, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cp = phi ptr [ %i.cs, %.thread.us.i.i ], [ %i.co, %.thread.us.i.preheader.i ] ; 2 uses
  %i.cq = add i64 %.131.us42.i.i, 1               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.cs, null
  %i.ct = add i64 %.131.us42.i.i, 2
  %.not2227.us.i.i = icmp ugt i64 %i.ct, %i.bz
  %or.cond.i.i = select i1 %.not.us.i.i, i1 true, i1 %.not2227.us.i.i
  br i1 %or.cond.i.i, label %.critedge.i.thread.i, label %.thread.us.i.i, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i:                   ; preds = %.lr.ph.i.i, %zslGetNodeSpanAtLevel.exit25.i.i
  %i.cu = phi ptr [ %i.db, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %.131.i.i = phi i64 [ %i.cy, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01845.i.i, %.lr.ph.i.i ] ; 2 uses
  %.12030.i.i = phi ptr [ %i.cu, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.01944.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, %.131.i.i                ; 3 uses
  %.not22.i.i = icmp ugt i64 %i.cy, %i.bz
  br i1 %.not22.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit25.i.i

zslGetNodeSpanAtLevel.exit25.i.i:                 ; preds = %zslGetNodeSpanAtLevel.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %.critedge.i.i, label %zslGetNodeSpanAtLevel.exit.i.i, !llvm.loop !57

.critedge.i.i:                                    ; preds = %zslGetNodeSpanAtLevel.exit25.i.i, %zslGetNodeSpanAtLevel.exit.i.i, %.preheader.i.i
  %.120.lcssa.i.i = phi ptr [ %.01944.i.i, %.preheader.i.i ], [ %i.cu, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.12030.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i64 [ %.01845.i.i, %.preheader.i.i ], [ %i.cy, %zslGetNodeSpanAtLevel.exit25.i.i ], [ %.131.i.i, %zslGetNodeSpanAtLevel.exit.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.1.lcssa.i.i, %i.bz
  br i1 %i.dc, label %zslGetElementByRank.exit, label %bb.ac

.critedge.i.thread.i:                             ; preds = %.thread.us.i.i, %.thread.us.i.preheader.i
  %.lcssa16.i = phi ptr [ %i.cj, %.thread.us.i.preheader.i ], [ %i.cp, %.thread.us.i.i ]
  %.lcssa.i = phi i64 [ %i.cm, %.thread.us.i.preheader.i ], [ %i.cq, %.thread.us.i.i ]
  %i.dd = icmp eq i64 %.lcssa.i, %i.bz
  %spec.select.i = select i1 %i.dd, ptr %.lcssa16.i, ptr null
  br label %zslGetElementByRank.exit

.critedge.thread.i.i:                             ; preds = %.lr.ph.split.us.i.i
  %i.de = icmp eq i64 %.01845.i.i, %i.bz
  %spec.select.i.i = select i1 %i.de, ptr %.01944.i.i, ptr null
  br label %zslGetElementByRank.exit

bb.ad:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !31
  %.not97 = icmp slt i64 %spec.select, 1
  br i1 %.not97, label %zslGetElementByRank.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = add nuw nsw i64 %spec.store.select, 1   ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !18 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader.preheader.i.i116, label %zslGetElementByRank.exit

.preheader.preheader.i.i116:                      ; preds = %bb.ae
  %i.dm = add nsw i32 %i.dk, -1
  %i.dn = zext nneg i32 %i.dm to i64
  br label %.preheader.i.i117

bb.af:                                            ; preds = %.critedge.i.i130
  %indvars.iv.next.i.i133 = add nsw i64 %indvars.iv.i.i118, -1
  %i.do = icmp sgt i64 %indvars.iv.i.i118, 0
  br i1 %i.do, label %.preheader.i.i117, label %zslGetElementByRank.exit, !llvm.loop !55

.preheader.i.i117:                                ; preds = %bb.af, %.preheader.preheader.i.i116
  %indvars.iv.i.i118 = phi i64 [ %i.dn, %.preheader.preheader.i.i116 ], [ %indvars.iv.next.i.i133, %bb.af ] ; 6 uses
  %.01845.i.i119 = phi i64 [ 0, %.preheader.preheader.i.i116 ], [ %.1.lcssa.i.i132, %bb.af ] ; 3 uses
  %.01944.i.i120 = phi ptr [ %i.df, %.preheader.preheader.i.i116 ], [ %.120.lcssa.i.i131, %bb.af ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01944.i.i120, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i.i118
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 4 uses
  %.not29.i.i121 = icmp eq ptr %i.dr, null
  br i1 %.not29.i.i121, label %.critedge.i.i130, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.preheader.i.i117
  %.not28.i.i123 = icmp eq i64 %indvars.iv.i.i118, 0
  br i1 %.not28.i.i123, label %.lr.ph.split.us.i.i134, label %zslGetNodeSpanAtLevel.exit.i.i124

.lr.ph.split.us.i.i134:                           ; preds = %.lr.ph.i.i122
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !31
  %.not.i.us40.i.i135 = icmp ne ptr %i.ds, null
  %i.dt = zext i1 %.not.i.us40.i.i135 to i64
  %i.du = add nuw i64 %.01845.i.i119, %i.dt       ; 4 uses
  %.not2227.us41.i.i136 = icmp ugt i64 %i.du, %i.di
  br i1 %.not2227.us41.i.i136, label %zslGetElementByRank.exit, label %.thread.us.i.preheader.i137

.thread.us.i.preheader.i137:                      ; preds = %.lr.ph.split.us.i.i134
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.peel.i138 = icmp eq ptr %i.dw, null
  %.not2227.us.i.peel.i139 = icmp ugt i64 %i.du, %spec.store.select
  %or.cond.i.peel.i140 = or i1 %.not2227.us.i.peel.i139, %.not.us.i.peel.i138
  br i1 %or.cond.i.peel.i140, label %.critedge.i.thread.i146, label %.thread.us.i.i141

.thread.us.i.i141:                                ; preds = %.thread.us.i.preheader.i137, %.thread.us.i.i141
  %.131.us42.i.i142 = phi i64 [ %i.dy, %.thread.us.i.i141 ], [ %i.du, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dx = phi ptr [ %i.ea, %.thread.us.i.i141 ], [ %i.dw, %.thread.us.i.preheader.i137 ] ; 2 uses
  %i.dy = add i64 %.131.us42.i.i142, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %.not.us.i.i143 = icmp eq ptr %i.ea, null
  %i.eb = add i64 %.131.us42.i.i142, 2
  %.not2227.us.i.i144 = icmp ugt i64 %i.eb, %i.di
  %or.cond.i.i145 = select i1 %.not.us.i.i143, i1 true, i1 %.not2227.us.i.i144
  br i1 %or.cond.i.i145, label %.critedge.i.thread.i146, label %.thread.us.i.i141, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i.i124:                ; preds = %.lr.ph.i.i122, %zslGetNodeSpanAtLevel.exit25.i.i128
  %i.ec = phi ptr [ %i.ej, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %i.dr, %.lr.ph.i.i122 ] ; 3 uses
  %.131.i.i125 = phi i64 [ %i.eg, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01845.i.i119, %.lr.ph.i.i122 ] ; 2 uses
  %.12030.i.i126 = phi ptr [ %i.ec, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.01944.i.i120, %.lr.ph.i.i122 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.12030.i.i126, i64 %indvars.iv.i.i118
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, %.131.i.i125             ; 3 uses
  %.not22.i.i127 = icmp ugt i64 %i.eg, %i.di
  br i1 %.not22.i.i127, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit25.i.i128

zslGetNodeSpanAtLevel.exit25.i.i128:              ; preds = %zslGetNodeSpanAtLevel.exit.i.i124
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.i.i118
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !31 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i129, label %.critedge.i.i130, label %zslGetNodeSpanAtLevel.exit.i.i124, !llvm.loop !57

.critedge.i.i130:                                 ; preds = %zslGetNodeSpanAtLevel.exit25.i.i128, %zslGetNodeSpanAtLevel.exit.i.i124, %.preheader.i.i117
  %.120.lcssa.i.i131 = phi ptr [ %.01944.i.i120, %.preheader.i.i117 ], [ %i.ec, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.12030.i.i126, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %.1.lcssa.i.i132 = phi i64 [ %.01845.i.i119, %.preheader.i.i117 ], [ %i.eg, %zslGetNodeSpanAtLevel.exit25.i.i128 ], [ %.131.i.i125, %zslGetNodeSpanAtLevel.exit.i.i124 ] ; 2 uses
  %i.ek = icmp eq i64 %.1.lcssa.i.i132, %i.di
  br i1 %i.ek, label %zslGetElementByRank.exit, label %bb.af

.critedge.i.thread.i146:                          ; preds = %.thread.us.i.i141, %.thread.us.i.preheader.i137
  %.lcssa16.i147 = phi ptr [ %i.dr, %.thread.us.i.preheader.i137 ], [ %i.dx, %.thread.us.i.i141 ]
  %.lcssa.i148 = phi i64 [ %i.du, %.thread.us.i.preheader.i137 ], [ %i.dy, %.thread.us.i.i141 ]
  %i.el = icmp eq i64 %.lcssa.i148, %i.di
  %spec.select.i149 = select i1 %i.el, ptr %.lcssa16.i147, ptr null
  br label %zslGetElementByRank.exit

zslGetElementByRank.exit:                         ; preds = %.critedge.i.i, %bb.ac, %.critedge.i.i130, %bb.af, %.critedge.i.thread.i146, %bb.ae, %.lr.ph.split.us.i.i134, %.critedge.thread.i.i, %.critedge.i.thread.i, %bb.ab, %bb.ad, %bb.aa
  %.0 = phi ptr [ %i.dh, %bb.ad ], [ %i.by, %bb.aa ], [ null, %.lr.ph.split.us.i.i134 ], [ null, %bb.ab ], [ %spec.select.i, %.critedge.i.thread.i ], [ %spec.select.i.i, %.critedge.thread.i.i ], [ %.120.lcssa.i.i131, %.critedge.i.i130 ], [ null, %bb.ae ], [ %spec.select.i149, %.critedge.i.thread.i146 ], [ null, %bb.af ], [ null, %bb.ac ], [ %.120.lcssa.i.i, %.critedge.i.i ]
  %.not99180 = icmp eq i64 %i.ah, 0
  br i1 %.not99180, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %zslGetElementByRank.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.in.v = select i1 %.not96, i64 16, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %sdslen.exit
  %i.en = phi i64 [ %i.ag, %.lr.ph ], [ %i.fk, %sdslen.exit ] ; 2 uses
  %.1181 = phi ptr [ %.0, %.lr.ph ], [ %i.fj, %sdslen.exit ] ; 5 uses
  %.not100 = icmp eq ptr %.1181, null
  br i1 %.not100, label %bb.ah, label %bb.ai, !prof !91

bb.ah:                                            ; preds = %bb.ag
  tail call void @_serverAssertWithInfo(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 3470) #17
  tail call void @abort() #18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %.1181, i64 24
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.1181, i64 %i.eq ; 6 uses
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !229
  %i.et = getelementptr i8, ptr %i.er, i64 -1
  %.val.i = load i8, ptr %i.et, align 1, !tbaa !36 ; 2 uses
  %i.eu = and i8 %.val.i, 7
  switch i8 %i.eu, label %sdslen.exit [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.am
    i8 4, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ev = lshr i8 %.val.i, 3
  %i.ew = zext nneg i8 %i.ev to i64
  br label %sdslen.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 -3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !36
  %i.ez = zext i8 %i.ey to i64
  br label %sdslen.exit

bb.al:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds i8, ptr %i.er, i64 -5
  %i.fb = load i16, ptr %i.fa, align 1, !tbaa !37
end_hunk_2
begin_hunk_3_@zrandmemberWithCountCommand:bb.a
  unreachable

zsetLength.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.d ], [ %i.x, %bb.e ] ; 8 uses
  %i.y = icmp slt i64 %1, 0
  %.0154 = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 9 uses
  %i.z = icmp eq i64 %1, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %zsetLength.exit
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !236
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.aa) #17
  br label %bb.cn

bb.h:                                             ; preds = %zsetLength.exit
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not169 = icmp eq i32 %i.ab, 0
  br i1 %.not169, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.g) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0160 = phi i64 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = icmp eq i64 %.0154, 1
  %or.cond = or i1 %i.y, %i.ad
  br i1 %or.cond, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.not177 = icmp eq i32 %2, 0                    ; 3 uses
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !215
  %i.ag = icmp eq i32 %i.af, 2
  %i.ah = zext i1 %i.ag to i64
  %spec.select = shl nuw i64 %.0154, %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0154.sink = phi i64 [ %.0154, %bb.k ], [ %spec.select, %bb.l ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.0154.sink) #17
  %i.ai = load i64, ptr %i.g, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 4
  %i.al = and i32 %i.ak, 15
  switch i32 %i.al, label %.loopexit [
    i32 7, label %bb.n
    i32 11, label %bb.ae
  ]

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.ad, %bb.n
  %.in = phi i64 [ %.0154, %bb.n ], [ %i.aq, %bb.ad ]
  %i.aq = add i64 %.in, -1                        ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.as = tail call ptr @dictGetFairRandomKey(ptr noundef %i.ar) #17
  %i.at = tail call ptr @dictGetKey(ptr noundef %i.as) #17 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i16, ptr %i.au, align 2, !tbaa !13
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 12 uses
  br i1 %.not177, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !215
  %i.az = icmp sgt i32 %i.ay, 2
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ba = getelementptr i8, ptr %i.ax, i64 -1
  %.val.i = load i8, ptr %i.ba, align 1, !tbaa !36 ; 2 uses
  %i.bb = and i8 %.val.i, 7
  switch i8 %i.bb, label %bb.x [
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.bc = lshr i8 %.val.i, 3
  %i.bd = zext nneg i8 %i.bc to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds i8, ptr %i.ax, i64 -5
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i16 %i.bi to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.ax, i64 -9
  %i.bl = load i32, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i32 %i.bl to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %i.ax, i64 -17
  %i.bo = load i64, ptr %i.bn, align 1, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i188 = phi i64 [ %i.bo, %bb.w ], [ %i.bd, %bb.s ], [ %i.bg, %bb.t ], [ %i.bj, %bb.u ], [ %i.bm, %bb.v ], [ 0, %bb.r ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i64 noundef %.0.i188) #17
  %i.bp = load double, ptr %i.at, align 8, !tbaa !16
  tail call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.bp) #17
  br label %bb.ad

.critedge:                                        ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %i.ax, i64 -1
  %.val.i189 = load i8, ptr %i.bq, align 1, !tbaa !36 ; 2 uses
  %i.br = and i8 %.val.i189, 7
  switch i8 %i.br, label %sdslen.exit191 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.critedge
  %i.bs = lshr i8 %.val.i189, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %sdslen.exit191

bb.z:                                             ; preds = %.critedge
  %i.bu = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.bw = zext i8 %i.bv to i64
  br label %sdslen.exit191

bb.aa:                                            ; preds = %.critedge
  %i.bx = getelementptr inbounds i8, ptr %i.ax, i64 -5
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !37
  %i.bz = zext i16 %i.by to i64
  br label %sdslen.exit191

bb.ab:                                            ; preds = %.critedge
  %i.ca = getelementptr inbounds i8, ptr %i.ax, i64 -9
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i32 %i.cb to i64
  br label %sdslen.exit191

bb.ac:                                            ; preds = %.critedge
  %i.cd = getelementptr inbounds i8, ptr %i.ax, i64 -17
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !24
  br label %sdslen.exit191

sdslen.exit191:                                   ; preds = %.critedge, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i190 = phi i64 [ %i.ce, %bb.ac ], [ %i.bt, %bb.y ], [ %i.bw, %bb.z ], [ %i.bz, %bb.aa ], [ %i.cc, %bb.ab ], [ 0, %.critedge ]
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i64 noundef %.0.i190) #17
  br label %bb.ad

bb.ad:                                            ; preds = %sdslen.exit191, %bb.x
  %i.cf = load i64, ptr %i.ap, align 8, !tbaa !252
  %i.cg = and i64 %i.cf, 1024
  %.not179 = icmp ne i64 %i.cg, 0
  %.not178 = icmp eq i64 %i.aq, 0
  %or.cond241 = select i1 %.not179, i1 true, i1 %.not178
  br i1 %or.cond241, label %.loopexit, label %bb.o

bb.ae:                                            ; preds = %bb.m
  %i.ch = tail call i64 @llvm.umin.i64(i64 %.0154, i64 1000) ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 24               ; 2 uses
  %i.cj = tail call noalias ptr @zmalloc(i64 noundef %i.ci) #20 ; 3 uses
  br i1 %.not177, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = tail call noalias ptr @zmalloc(i64 noundef %i.ci) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0158 = phi ptr [ %i.ck, %bb.af ], [ null, %bb.ae ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ah
  %.2 = phi i64 [ %.0154, %bb.ag ], [ %i.co, %bb.ah ] ; 2 uses
  %i.cn = tail call i64 @llvm.umin.i64(i64 %.2, i64 %i.ch) ; 2 uses
  %i.co = sub i64 %.2, %i.cn                      ; 2 uses
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !75
  %i.cq = trunc nuw nsw i64 %i.cn to i32          ; 2 uses
  tail call void @lpRandomPairs(ptr noundef %i.cp, i32 noundef %i.cq, ptr noundef %i.cj, ptr noundef %.0158, i32 noundef 2) #17
  tail call fastcc void @zrandmemberReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.cq, ptr noundef %i.cj, ptr noundef %.0158)
  %i.cr = load i64, ptr %i.cm, align 8, !tbaa !252
  %i.cs = and i64 %i.cr, 1024
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = icmp ne i64 %i.co, 0
  %or.cond3 = and i1 %i.cu, %i.ct
  br i1 %or.cond3, label %bb.ah, label %bb.ai, !llvm.loop !253

bb.ai:                                            ; preds = %bb.ah
  tail call void @zfree(ptr noundef %i.cj) #17
  tail call void @zfree(ptr noundef %.0158) #17
  br label %.loopexit

bb.aj:                                            ; preds = %bb.j
  store ptr %i.g, ptr %3, align 8, !tbaa !186
  %i.cv = load i64, ptr %i.g, align 8
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = and i32 %i.cw, 15
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !188
  %i.cz = lshr i32 %i.cw, 4
  %i.da = and i32 %i.cz, 15
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !189
  call void @zuiInitIterator(ptr noundef nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.dc = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i) ; 2 uses
  %.not170 = icmp eq i32 %2, 0                    ; 7 uses
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !215
  %i.df = icmp eq i32 %i.de, 2
  %i.dg = zext i1 %i.df to i64
  %spec.select238 = shl nuw nsw i64 %i.dc, %i.dg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi i64 [ %i.dc, %bb.aj ], [ %spec.select238, %bb.ak ]
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %.sink) #17
  %.not171 = icmp ult i64 %1, %.0.i
  br i1 %.not171, label %bb.bb, label %.preheader207

.preheader207:                                    ; preds = %bb.al
  %i.dh = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176208 = icmp eq i32 %i.dh, 0
  br i1 %.not176208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader207
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  br i1 %.not170, label %.critedge183.us, label %.lr.ph.split

.critedge183.us:                                  ; preds = %.lr.ph, %zuiNewSdsFromValue.exit197.us
  %i.do = load i32, ptr %4, align 8, !tbaa !190   ; 2 uses
  %i.dp = and i32 %i.do, 1
  %.not.i193.us = icmp eq i32 %i.dp, 0
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i193.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge183.us
  %i.dr = and i32 %i.do, -2
  store i32 %i.dr, ptr %4, align 8, !tbaa !190
  store ptr null, ptr %i.dj, align 8, !tbaa !192
  br label %zuiNewSdsFromValue.exit197.us

bb.an:                                            ; preds = %.critedge183.us
  %.not14.i195.us = icmp eq ptr %i.dq, null
  br i1 %.not14.i195.us, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = call ptr @sdsdup(ptr noundef nonnull %i.dq) #17
  br label %zuiNewSdsFromValue.exit197.us

bb.ap:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !195 ; 2 uses
  %.not15.i196.us = icmp eq ptr %i.dt, null
  br i1 %.not15.i196.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load i32, ptr %i.dl, align 8, !tbaa !196
  %i.dv = zext i32 %i.du to i64
  %i.dw = call ptr @sdsnewlen(ptr noundef nonnull %i.dt, i64 noundef %i.dv) #17
  br label %zuiNewSdsFromValue.exit197.us

bb.ar:                                            ; preds = %bb.ap
  %i.dx = load i64, ptr %i.dm, align 8, !tbaa !193
  %i.dy = call ptr @sdsfromlonglong(i64 noundef %i.dx) #17
  br label %zuiNewSdsFromValue.exit197.us

zuiNewSdsFromValue.exit197.us:                    ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am
  %.0.i194.us = phi ptr [ %i.dq, %bb.am ], [ %i.ds, %bb.ao ], [ %i.dw, %bb.aq ], [ %i.dy, %bb.ar ]
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %.0.i194.us) #17
  %i.dz = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176.us = icmp eq i32 %i.dz, 0
  br i1 %.not176.us, label %._crit_edge, label %.critedge183.us, !llvm.loop !254

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ba
  %i.ea = load i32, ptr %i.di, align 4, !tbaa !215
  %i.eb = icmp sgt i32 %i.ea, 2
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split
  %i.ec = load i32, ptr %4, align 8, !tbaa !190   ; 2 uses
  %i.ed = and i32 %i.ec, 1
  %.not.i = icmp eq i32 %i.ed, 0
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = and i32 %i.ec, -2
  store i32 %i.ef, ptr %4, align 8, !tbaa !190
  store ptr null, ptr %i.dj, align 8, !tbaa !192
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %.not14.i = icmp eq ptr %i.ee, null
  br i1 %.not14.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = call ptr @sdsdup(ptr noundef nonnull %i.ee) #17
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.eh = load ptr, ptr %i.dk, align 8, !tbaa !195 ; 2 uses
  %.not15.i = icmp eq ptr %i.eh, null
  br i1 %.not15.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = load i32, ptr %i.dl, align 8, !tbaa !196
  %i.ej = zext i32 %i.ei to i64
  %i.ek = call ptr @sdsnewlen(ptr noundef nonnull %i.eh, i64 noundef %i.ej) #17
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.el = load i64, ptr %i.dm, align 8, !tbaa !193
  %i.em = call ptr @sdsfromlonglong(i64 noundef %i.el) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.au
  %.0.i192 = phi ptr [ %i.ee, %bb.au ], [ %i.eg, %bb.aw ], [ %i.ek, %bb.ay ], [ %i.em, %bb.az ]
  call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %.0.i192) #17
  %i.en = load double, ptr %i.dn, align 8, !tbaa !194
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.en) #17
  %i.eo = call i32 @zuiNext(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not176 = icmp eq i32 %i.eo, 0
  br i1 %.not176, label %._crit_edge, label %.lr.ph.split, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.ba, %zuiNewSdsFromValue.exit197.us, %.preheader207
  call void @zuiClearIterator(ptr noundef nonnull %3)
  br label %.loopexit

bb.bb:                                            ; preds = %bb.al
  %i.ep = load i64, ptr %i.g, align 8
  %i.eq = and i64 %i.ep, 240
  %i.er = icmp eq i64 %i.eq, 176
  br i1 %i.er, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.es = mul i64 %1, 24                          ; 2 uses
  %i.et = tail call noalias ptr @zmalloc(i64 noundef %i.es) #20 ; 3 uses
  br i1 %.not170, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = tail call noalias ptr @zmalloc(i64 noundef %i.es) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0156 = phi ptr [ %i.eu, %bb.bd ], [ null, %bb.bc ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !75
  %i.ex = trunc i64 %1 to i32                     ; 2 uses
  %i.ey = tail call i32 @lpRandomPairsUnique(ptr noundef %i.ew, i32 noundef %i.ex, ptr noundef %i.et, ptr noundef %.0156, i32 noundef 2) #17
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp eq i64 %1, %i.ez
  br i1 %i.fa, label %bb.bg, label %bb.bf, !prof !34

bb.bf:                                            ; preds = %bb.be
  tail call void @_serverAssert(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.1, i32 noundef 4598) #17
  tail call void @abort() #18
  unreachable

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @zrandmemberReplyWithListpack(ptr noundef nonnull %0, i32 noundef %i.ex, ptr noundef %i.et, ptr noundef %.0156)
  tail call void @zfree(ptr noundef %i.et) #17
  tail call void @zfree(ptr noundef %.0156) #17
  call void @zuiClearIterator(ptr noundef nonnull %3)
  br label %.loopexit
end_hunk_3
