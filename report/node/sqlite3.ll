inline.NumInlined: 12422
inline.NumDeleted: 1708
begin_hunk_0_@btreeBeginTrans:bb.a

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr i8, ptr %i.cu, i64 8
  %.val.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !516 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 80
  store ptr %.val.i.i.i, ptr %i.cz, align 8, !tbaa !659
  %i.da = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 112
  store ptr %i.cu, ptr %i.da, align 8, !tbaa !690
  %i.db = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 72
  store ptr %i.d, ptr %i.db, align 8, !tbaa !762
  store i32 1, ptr %i.cw, align 4, !tbaa !761
  %i.dc = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 9
  store i8 100, ptr %i.dc, align 1, !tbaa !763
  br label %bb.aa

btreeGetPage.exit.i:                              ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.thread152thread-pre-split

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %i.dd = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.val.i.i.i, %bb.z ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.df = load i32, ptr %i.de, align 1            ; 2 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %.val.i = load i32, ptr %i.dh, align 8, !tbaa !676 ; 3 uses
  %i.di = icmp eq i32 %i.df, 0
  br i1 %i.di, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 92
  %i.dm = load i32, ptr %i.dk, align 1
  %i.dn = load i32, ptr %i.dl, align 1
  %i.do = icmp ne i32 %i.dm, %i.dn
  %i.dp = zext i1 %i.do to i32
  %.not90.i = icmp eq i32 %i.dp, 0
  br i1 %.not90.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.077.i = phi i32 [ %.val.i, %bb.ac ], [ %i.dj, %bb.ab ] ; 3 uses
  %i.dq = load ptr, ptr %i.bj, align 8, !tbaa !1942
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !545
  %i.dt = and i64 %i.ds, 33554432
  %.not91.i = icmp ne i64 %i.dt, 0
  %.not92139.i = icmp eq i32 %.077.i, 0
  %.not92.i = select i1 %.not91.i, i1 true, i1 %.not92139.i
  br i1 %.not92.i, label %._crit_edge141.i, label %bb.ae

._crit_edge141.i:                                 ; preds = %bb.ad
  %.pre143.i = load i32, ptr %i.bl, align 8, !tbaa !749
  br label %lockBtree.exit.thread.thread

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i128, ptr %i.dd, align 1
  %i.dv = icmp ne i128 %i.du, 265465397511803988906881385371554131
  %i.dw = zext i1 %i.dv to i32
  %.not94.i = icmp eq i32 %i.dw, 0
  br i1 %.not94.i, label %bb.af, label %.thread120.i

bb.af:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 18
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !227
  %i.dz = icmp ugt i8 %i.dy, 2
  br i1 %i.dz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = load i16, ptr %i.aa, align 8, !tbaa !717
  %i.eb = or i16 %i.ea, 1
  store i16 %i.eb, ptr %i.aa, align 8, !tbaa !717
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 19
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !227 ; 2 uses
  %i.ee = icmp ugt i8 %i.ed, 2
  br i1 %i.ee, label %.thread120.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = icmp eq i8 %i.ed, 2
  br i1 %i.ef, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load i16, ptr %i.aa, align 8, !tbaa !717
  %i.eh = and i16 %i.eg, 32
  %i.ei = icmp eq i16 %i.eh, 0
  br i1 %i.ei, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.ej = call fastcc i32 @sqlite3PagerOpenWal(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.b), !inline_history !1956 ; 2 uses
  %.not95.i = icmp eq i32 %i.ej, 0
  br i1 %.not95.i, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !5
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %.thread136.i, label %bb.am

.thread136.i:                                     ; preds = %bb.al
  %i.em = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val104.i = load ptr, ptr %i.em, align 8, !tbaa !690
  call fastcc void @releasePageOne(ptr %.val104.i), !inline_history !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %lockBtree.exit.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 21 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = xor i16 %i.eo, 8256
  %i.eq = getelementptr i8, ptr %i.en, i64 2
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i16
  %i.et = xor i16 %i.es, 32
  %i.eu = or i16 %i.ep, %i.et
  %i.ev = icmp ne i16 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %.not97.i = icmp eq i32 %i.ew, 0
  br i1 %.not97.i, label %bb.ao, label %.thread120.i

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.ey = load i16, ptr %i.ex, align 1            ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8                ; 5 uses
  %i.fb = add nuw nsw i32 %i.fa, 16776960
  %i.fc = and i32 %i.fb, %i.fa
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = add i16 %i.ey, -257
  %i.ff = icmp ult i16 %i.fe, -255
  %or.cond3.i = or i1 %i.ff, %i.fd
  br i1 %or.cond3.i, label %.thread120.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !227
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  %i.fj = sub nuw nsw i32 %i.fa, %i.fi            ; 4 uses
  %i.fk = load i32, ptr %i.bk, align 4, !tbaa !131
  %.not98.i = icmp eq i32 %i.fa, %i.fk
  br i1 %.not98.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val103.i = load ptr, ptr %i.fl, align 8, !tbaa !690
  call fastcc void @releasePageOne(ptr %.val103.i), !inline_history !1956
  store i32 %i.fj, ptr %i.bl, align 8, !tbaa !749
  store i32 %i.fa, ptr %i.bk, align 4, !tbaa !131
  %i.fm = load i16, ptr %i.aa, align 8, !tbaa !717
  %i.fn = or i16 %i.fm, 2
  store i16 %i.fn, ptr %i.aa, align 8, !tbaa !717
  %i.fo = load ptr, ptr %i.bm, align 8, !tbaa !1312 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.fo, null
  br i1 %.not.i105.i, label %lockBtree.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4 ; 2 uses
  store ptr %i.fp, ptr %i.bm, align 8, !tbaa !1312
  call fastcc void @pcache1Free(ptr noundef nonnull %i.fp), !inline_history !1956
  store ptr null, ptr %i.bm, align 8, !tbaa !1312
  br label %lockBtree.exit

bb.as:                                            ; preds = %bb.ap
  %i.fq = icmp ugt i32 %.077.i, %.val.i
  br i1 %i.fq, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fr = load ptr, ptr %i.bj, align 8, !tbaa !1942
  %i.fs = getelementptr i8, ptr %i.fr, i64 48
  %.val101.i = load i64, ptr %i.fs, align 8, !tbaa !545
  %i.ft = and i64 %.val101.i, 268435457
  %.not140.i = icmp eq i64 %i.ft, 1
  br i1 %.not140.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 75998, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !1956
  br label %.thread120.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %.279.i = phi i32 [ %.077.i, %bb.as ], [ %.val.i, %bb.at ]
  %i.fu = icmp samesign ult i32 %i.fj, 480
  br i1 %i.fu, label %.thread120.i, label %.thread131.i

.thread131.i:                                     ; preds = %bb.av
  %i.fv = load i16, ptr %i.aa, align 8, !tbaa !717
  %i.fw = or i16 %i.fv, 2
  store i16 %i.fw, ptr %i.aa, align 8, !tbaa !717
  store i32 %i.fj, ptr %i.bl, align 8, !tbaa !749
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %3 = load <4 x i8>, ptr %i.fx, align 1, !tbaa !227
  %4 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %3)
  %i.fy = icmp ne i8 %4, 0
  %i.fz = zext i1 %i.fy to i8
  store i8 %i.fz, ptr %i.bn, align 1, !tbaa !742
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %5 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !227
  %6 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %5)
  %i.gb = icmp ne i8 %6, 0
  %i.gc = zext i1 %i.gb to i8
  store i8 %i.gc, ptr %i.bo, align 2, !tbaa !691
  br label %lockBtree.exit.thread.thread

bb.aw:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.thread120.i

lockBtree.exit.thread.thread:                     ; preds = %._crit_edge141.i, %.thread131.i
  %i.gd = phi i32 [ %i.fj, %.thread131.i ], [ %.pre143.i, %._crit_edge141.i ] ; 3 uses
  %.4.i = phi i32 [ %.279.i, %.thread131.i ], [ 0, %._crit_edge141.i ]
  %i.ge = shl i32 %i.gd, 6
  %i.gf = add i32 %i.ge, -768
  %i.gg = udiv i32 %i.gf, 255
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = add i16 %i.gh, -23                      ; 2 uses
  store i16 %i.gi, ptr %i.bp, align 2, !tbaa !1958
  %i.gj = shl i32 %i.gd, 5
  %i.gk = add i32 %i.gj, -384
  %i.gl = udiv i32 %i.gk, 255
  %i.gm = trunc i32 %i.gl to i16
  %i.gn = add i16 %i.gm, -23                      ; 2 uses
  store i16 %i.gn, ptr %i.bq, align 4, !tbaa !1959
  %i.go = trunc i32 %i.gd to i16
  %i.gp = add i16 %i.go, -35
  store i16 %i.gp, ptr %i.br, align 2, !tbaa !1960
  store i16 %i.gn, ptr %i.bs, align 8, !tbaa !1961
  %spec.select152.i = call i16 @llvm.umin.i16(i16 %i.gi, i16 127)
  %spec.select.i = trunc nuw nsw i16 %spec.select152.i to i8
  store i8 %spec.select.i, ptr %i.bt, align 1, !tbaa !1962
  store ptr %.val13.i.i.i, ptr %i.bi, align 8, !tbaa !658
  store i32 %.4.i, ptr %i.be, align 8, !tbaa !668
  br label %.critedge

.thread120.i:                                     ; preds = %bb.ao, %bb.an, %bb.ah, %bb.ae, %bb.av, %bb.aw, %bb.au
  %.276125.i = phi i32 [ %i.ej, %bb.aw ], [ 11, %bb.au ], [ 26, %bb.av ], [ 26, %bb.ae ], [ 26, %bb.ah ], [ 26, %bb.an ], [ 26, %bb.ao ]
  %i.gq = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val102.i = load ptr, ptr %i.gq, align 8, !tbaa !690 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val102.i, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !520 ; 2 uses
  call fastcc void @sqlite3PcacheRelease(ptr noundef %.val102.i), !inline_history !1963
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 288
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !88
  %i.gv = getelementptr i8, ptr %i.gu, i64 24
  %.val.i.i.i.i = load i64, ptr %i.gv, align 8, !tbaa !765
  %i.gw = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.gw, label %bb.ax, label %releasePageOne.exit.i

bb.ax:                                            ; preds = %.thread120.i
  call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.gs), !inline_history !1964
  br label %releasePageOne.exit.i

releasePageOne.exit.i:                            ; preds = %bb.ax, %.thread120.i
  store ptr null, ptr %i.bi, align 8, !tbaa !658
  br label %.thread152thread-pre-split

lockBtree.exit:                                   ; preds = %bb.aq, %bb.ar
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.gy = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.gx, ptr noundef nonnull %i.bk, i32 noundef %i.fi), !inline_history !1956 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %lockBtree.exit.thread, label %.thread152thread-pre-split, !llvm.loop !1955

.critedge:                                        ; preds = %lockBtree.exit.thread, %lockBtree.exit.thread.thread, %bb.w
  %.2.lcssa = phi i32 [ %.194, %bb.w ], [ 0, %lockBtree.exit.thread.thread ], [ 0, %lockBtree.exit.thread ] ; 2 uses
  %i.ha = icmp eq i32 %.2.lcssa, 0
  %or.cond5 = and i1 %i.q, %i.ha
  br i1 %or.cond5, label %bb.ay, label %bb.bu

bb.ay:                                            ; preds = %.critedge
  %i.hb = load i16, ptr %i.aa, align 8, !tbaa !717
  %i.hc = and i16 %i.hb, 1
  %.not112 = icmp eq i16 %i.hc, 0
  br i1 %.not112, label %bb.az, label %.thread152thread-pre-split

bb.az:                                            ; preds = %bb.ay
  %i.hd = load i32, ptr %i.bv, align 8, !tbaa !678 ; 2 uses
  %.not.i124 = icmp eq i32 %i.hd, 0
  br i1 %.not.i124, label %bb.ba, label %sqlite3PagerBegin.exit

bb.ba:                                            ; preds = %bb.az
  %i.he = load ptr, ptr %0, align 8, !tbaa !661
  %i.hf = getelementptr i8, ptr %i.he, i64 102
  %.val121 = load i8, ptr %i.hf, align 2, !tbaa !1965
  %i.hg = icmp eq i8 %.val121, 2
  %i.hh = zext i1 %i.hg to i8
  store i8 %i.hh, ptr %i.bw, align 2, !tbaa !1966
  %i.hi = load i8, ptr %i.bx, align 1, !tbaa !720
  %i.hj = icmp eq i8 %i.hi, 1
  br i1 %i.hj, label %bb.bb, label %sqlite3PagerBegin.exit.thread147

bb.bb:                                            ; preds = %bb.ba
  %i.hk = load ptr, ptr %i.by, align 8, !tbaa !595 ; 6 uses
  %.not32.i = icmp eq ptr %i.hk, null
  br i1 %.not32.i, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hl = load i8, ptr %i.bz, align 8, !tbaa !736
  %.not33.i = icmp eq i8 %i.hl, 0
  br i1 %.not33.i, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 63 ; 3 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !1967
  %.not.i14.i.not.i = icmp eq i8 %i.hn, 0
  br i1 %.not.i14.i.not.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ho = load i8, ptr %i.ca, align 2, !tbaa !1968
  switch i8 %i.ho, label %.thread.i [
    i8 5, label %bb.bf
    i8 3, label %bb.bf
    i8 2, label %bb.bf
    i8 1, label %bb.bf
    i8 0, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be, %bb.be
  %i.hp = load i8, ptr %i.cb, align 1, !tbaa !1969
  %.not.i.i126 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i126, label %bb.bg, label %.thread70.i

.thread70.i:                                      ; preds = %bb.bf
  store i8 4, ptr %i.ca, align 2, !tbaa !1968
  br label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr %i.cc, align 8, !tbaa !524 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !473
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !1970
  %i.hu = call i32 %i.ht(ptr noundef nonnull %i.hq, i32 noundef range(i32 1, 5) 4) #59, !inline_history !1971 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bh, label %sqlite3PagerBegin.exit

bb.bh:                                            ; preds = %bb.bg
  %.pre.pre.i = load ptr, ptr %i.by, align 8, !tbaa !595 ; 3 uses
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 63 ; 3 uses
  %.pre60.pre.i = load i8, ptr %.phi.trans.insert.phi.trans.insert.i, align 1, !tbaa !1967
  %i.hw = icmp eq i8 %.pre60.pre.i, 0
  store i8 4, ptr %i.ca, align 2, !tbaa !1968
  br i1 %i.hw, label %.thread.i, label %sqlite3WalExclusiveMode.exit.i

.thread.i:                                        ; preds = %bb.be, %bb.bh, %.thread70.i
  %i.hx = phi ptr [ %i.hm, %.thread70.i ], [ %.phi.trans.insert.phi.trans.insert.i, %bb.bh ], [ %i.hm, %bb.be ]
  %i.hy = phi ptr [ %i.hk, %.thread70.i ], [ %.pre.pre.i, %bb.bh ], [ %i.hk, %bb.be ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 60
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !1972
  %i.ib = sext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !1973 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !473
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 112
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1521
  %i.ii = call i32 %i.ih(ptr noundef nonnull %i.ie, i32 noundef range(i32 -2147483645, -2147483648) %i.ic, i32 noundef 1, i32 noundef 5) #59, !inline_history !1974 ; 0 uses
  %.pre61.pre.i = load ptr, ptr %i.by, align 8, !tbaa !595
  br label %sqlite3WalExclusiveMode.exit.i

sqlite3WalExclusiveMode.exit.i:                   ; preds = %.thread.i, %bb.bh
  %i.ij = phi ptr [ %.phi.trans.insert.phi.trans.insert.i, %bb.bh ], [ %i.hx, %.thread.i ]
  %.pre61.i = phi ptr [ %.pre.pre.i, %bb.bh ], [ %.pre61.pre.i, %.thread.i ]
  store i8 1, ptr %i.ij, align 1, !tbaa !1967
  br label %bb.bi

bb.bi:                                            ; preds = %sqlite3WalExclusiveMode.exit.i, %bb.bd, %bb.bc
  %i.ik = phi ptr [ %.pre61.i, %sqlite3WalExclusiveMode.exit.i ], [ %i.hk, %bb.bd ], [ %i.hk, %bb.bc ] ; 7 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 66
  %i.im = load i8, ptr %i.il, align 2, !tbaa !1975
  %.not.i39.i = icmp eq i8 %i.im, 0
  br i1 %.not.i39.i, label %bb.bj, label %.thread152thread-pre-split

bb.bj:                                            ; preds = %bb.bi
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 63 ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !1967
  %.not.i.i.i125 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i125, label %walLockExclusive.exit.i.i, label %walLockExclusive.exit.thread.i.i

walLockExclusive.exit.i.i:                        ; preds = %bb.bj
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !1973 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !473
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 112
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !1521
  %i.iu = call i32 %i.it(ptr noundef nonnull %i.iq, i32 noundef range(i32 -2147483645, -2147483648) 0, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !1976 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not13.i.i, label %walLockExclusive.exit.thread.i.i, label %sqlite3PagerBegin.exit

walLockExclusive.exit.thread.i.i:                 ; preds = %walLockExclusive.exit.i.i, %bb.bj
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 64 ; 2 uses
  store i8 1, ptr %i.iv, align 8, !tbaa !1977
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  %i.ix = getelementptr i8, ptr %i.ik, i64 48
  %.val.i.i = load ptr, ptr %i.ix, align 8, !tbaa !1978
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !348
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.iw, ptr noundef nonnull dereferenceable(48) %.val.val.i.i, i64 48)
  %.not14.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not14.i.i, label %sqlite3WalBeginWriteTransaction.exit.thread56.i, label %bb.bk

bb.bk:                                            ; preds = %walLockExclusive.exit.thread.i.i
  %i.iy = load i8, ptr %i.in, align 1, !tbaa !1967
end_hunk_0
begin_hunk_1_@btreeEndTransaction:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1949 ; 2 uses
  %.not19.i = icmp eq ptr %i.t, null
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.e, %sqlite3_free.exit.i
  %i.u = phi ptr [ %i.ap, %sqlite3_free.exit.i ], [ %i.t, %bb.e ] ; 6 uses
  %.020.i = phi ptr [ %.1.i, %sqlite3_free.exit.i ], [ %i.s, %bb.e ] ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1951
  %i.w = icmp eq ptr %i.v, %0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.w, label %bb.f, label %sqlite3_free.exitthread-pre-split.i

bb.f:                                             ; preds = %.lr.ph.i15
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2347 ; 2 uses
  store ptr %i.y, ptr %.020.i, align 8, !tbaa !1949
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1952
  %.not18.i = icmp eq i32 %i.aa, 1
  br i1 %.not18.i, label %sqlite3_free.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !2348
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %i.u) #59, !inline_history !2349
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ai = sub nsw i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.al(ptr noundef nonnull %i.u) #59, !inline_history !2350
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exitthread-pre-split.i, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !2351
  br label %sqlite3_free.exitthread-pre-split.i

bb.k:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ao(ptr noundef nonnull %i.u) #59, !inline_history !2350
  br label %sqlite3_free.exitthread-pre-split.i

sqlite3_free.exitthread-pre-split.i:              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.i, %.lr.ph.i15
  %.1.ph.i = phi ptr [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.020.i, %sqlite3_mutex_enter.exit.i.i ], [ %i.x, %.lr.ph.i15 ] ; 2 uses
  %.pr.i = load ptr, ptr %.1.ph.i, align 8, !tbaa !1949
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %sqlite3_free.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %sqlite3_free.exitthread-pre-split.i ], [ %i.y, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.1.ph.i, %sqlite3_free.exitthread-pre-split.i ], [ %.020.i, %bb.f ]
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !2352

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1948
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1948
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !1995
  br label %.sink.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1995 ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %.sink.split.i, label %clearAllSharedCacheTableLocks.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.pre = phi i32 [ %.pre.pre, %bb.l ], [ 2, %bb.m ]
  %.sink26.i = phi i16 [ -193, %bb.l ], [ -129, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !717
  %i.ay = and i16 %i.ax, %.sink26.i
  store i16 %i.ay, ptr %i.aw, align 8, !tbaa !717
  br label %clearAllSharedCacheTableLocks.exit

clearAllSharedCacheTableLocks.exit:               ; preds = %bb.m, %.sink.split.i
  %i.az = phi i32 [ %i.au, %bb.m ], [ %.pre, %.sink.split.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1995
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.thread

bb.n:                                             ; preds = %clearAllSharedCacheTableLocks.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %i.bd, align 4, !tbaa !654
  br label %.thread

.thread:                                          ; preds = %bb.a, %clearAllSharedCacheTableLocks.exit, %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !646
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !654
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %unlockBtreeIfUnused.exit

bb.o:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !658 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %unlockBtreeIfUnused.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bh, align 8, !tbaa !658
  %i.bj = getelementptr i8, ptr %i.bi, i64 112
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !690 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !520 ; 2 uses
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef %.val.i), !inline_history !1988
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !88
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !765
  %i.bp = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bp, label %bb.q, label %unlockBtreeIfUnused.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.bl), !inline_history !1989
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.q, %bb.p, %bb.o, %.thread, %downgradeAllSharedCacheTableLocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incrVacuumStep(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp ult i32 %2, 2
  br i1 %i.h, label %ptrmapPageno.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !749
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %2, -2                           ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131
  %i.s = udiv i32 %i.p, %i.r
  %i.t = add nuw i32 %i.o, 1
  %i.u = icmp eq i32 %i.t, %i.s
  %spec.select.v.i = select i1 %i.u, i32 3, i32 2
  %spec.select.i = add i32 %spec.select.v.i, %i.o
  br label %ptrmapPageno.exit

ptrmapPageno.exit:                                ; preds = %bb.a, %bb.b
  %.010.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.v = icmp eq i32 %.010.i, %2
  br i1 %i.v, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %ptrmapPageno.exit
  %i.w = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !131
  %i.z = udiv i32 %i.w, %i.y
  %i.aa = add i32 %i.z, 1
  %.not = icmp eq i32 %2, %i.aa
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !658
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !659
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %4 = load <4 x i8>, ptr %i.af, align 1, !tbaa !227
  %5 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %4)
  %i.ag = icmp eq i8 %5, 0
  br i1 %i.ag, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not65 = icmp eq i32 %i.ah, 0
  br i1 %.not65, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !227  ; 2 uses
  switch i8 %i.ai, label %bb.k [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 76650, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.aj = icmp eq i32 %3, 0
  br i1 %i.aj, label %bb.i, label %.thread92

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.ak = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %2, i8 noundef zeroext 1) ; 2 uses
  %.not69 = icmp eq i32 %i.ak, 0
  br i1 %.not69, label %bb.j, label %.critedge71

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !2045
  call fastcc void @releasePage(ptr noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %.thread92

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.am = call fastcc i32 @btreeGetPage(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %.not66 = icmp eq i32 %i.am, 0
  br i1 %.not66, label %bb.l, label %.thread96

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i32 %3, 0                       ; 3 uses
  %spec.select = select i1 %i.an, i8 2, i8 0
  %spec.select72 = select i1 %i.an, i32 %1, i32 0
  %i.ao = getelementptr i8, ptr %0, i64 64        ; 2 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %.val.us = load i32, ptr %i.ao, align 8, !tbaa !668
  %i.ap = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %1, i8 noundef zeroext 2) ; 2 uses
  %.not67.us = icmp eq i32 %i.ap, 0
  br i1 %.not67.us, label %bb.m, label %.split104.us

bb.m:                                             ; preds = %.split.us
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !2045 ; 2 uses
  %.not.i74.us = icmp eq ptr %i.aq, null
  br i1 %.not.i74.us, label %releasePage.exit77.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.aq, i64 112
  %.val.i75.us = load ptr, ptr %i.ar, align 8, !tbaa !690 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 52
  %i.at = load i16, ptr %i.as, align 4, !tbaa !519
  %i.au = and i16 %i.at, 32
  %.not.i.i.i76.us = icmp eq i16 %i.au, 0
  br i1 %.not.i.i.i76.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !520 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !521
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !521
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 168 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !522
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 32
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !523
  store ptr %.val.i75.us, ptr %i.ba, align 8, !tbaa !522
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !524 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !525
  %i.bh = add i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79
  %i.bl = mul nsw i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !516
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !473
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !526
  %i.br = call i32 %i.bq(ptr noundef nonnull %i.be, i64 noundef %i.bl, ptr noundef %i.bn) #59, !inline_history !2353 ; 0 uses
  br label %releasePage.exit77.us

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i75.us)
  br label %releasePage.exit77.us

releasePage.exit77.us:                            ; preds = %bb.p, %bb.o, %bb.m
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !5   ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, %.val.us
  br i1 %i.bt, label %.split106.us, label %.split108.us

.split108.us:                                     ; preds = %releasePage.exit77.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %.split108

.split:                                           ; preds = %bb.l, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %.val = load i32, ptr %i.ao, align 8, !tbaa !668
  %i.bu = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %spec.select72, i8 noundef zeroext %spec.select) ; 2 uses
  %.not67 = icmp eq i32 %i.bu, 0
  br i1 %.not67, label %bb.t, label %.split104.us

.split104.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %i.ap, %.split.us ], [ %i.bu, %.split ] ; 3 uses
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !2045 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %releasePage.exit.thread, label %bb.q

bb.q:                                             ; preds = %.split104.us
  %i.bw = getelementptr i8, ptr %i.bv, i64 112
  %.val.i = load ptr, ptr %i.bw, align 8, !tbaa !690 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !519
  %i.bz = and i16 %i.by, 32
  %.not.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !520 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 152 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !521
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !521
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 168 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !522
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !523
  store ptr %.val.i, ptr %i.cf, align 8, !tbaa !522
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !524 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !525
  %i.cm = add i32 %i.cl, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !79
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !516
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !473
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !526
  %i.cw = call i32 %i.cv(ptr noundef nonnull %i.cj, i64 noundef %i.cq, ptr noundef %i.cs) #59, !inline_history !2353 ; 0 uses
  br label %releasePage.exit.thread

bb.s:                                             ; preds = %bb.q
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit.thread

bb.t:                                             ; preds = %.split
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !2045 ; 2 uses
  %.not.i74 = icmp eq ptr %i.cx, null
  br i1 %.not.i74, label %releasePage.exit77, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr i8, ptr %i.cx, i64 112
  %.val.i75 = load ptr, ptr %i.cy, align 8, !tbaa !690 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i75, i64 52
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !519
  %i.db = and i16 %i.da, 32
  %.not.i.i.i76 = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.i76, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i75, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !520 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 152 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !521
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !521
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 168 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !522
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i75, i64 32
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !523
  store ptr %.val.i75, ptr %i.dh, align 8, !tbaa !522
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !524 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i75, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !525
  %i.do = add i32 %i.dn, -1
  %i.dp = zext i32 %i.do to i64
end_hunk_1
begin_hunk_2_@sqlite3VdbeExec:bb.a
  %i.gdc = icmp eq i32 %i.gdb, 0                  ; 4 uses
  br i1 %i.gdc, label %bb.aph, label %bb.api

bb.aph:                                           ; preds = %bb.apg
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gca, i64 8
  %i.gde = load i32, ptr %i.gdd, align 4, !tbaa !5
  %.not.i4450 = icmp ne i32 %i.gde, 1
  br label %bb.api

bb.api:                                           ; preds = %bb.aph, %bb.apg
  %.not82.i = phi i1 [ false, %bb.apg ], [ %.not.i4450, %bb.aph ]
  %i.gdf = getelementptr inbounds nuw i8, ptr %i.gcm, i64 17 ; 2 uses
  %i.gdg = load i8, ptr %i.gdf, align 1, !tbaa !592
  %.not.i.i4429 = icmp eq i8 %i.gdg, 0
  br i1 %.not.i.i4429, label %sqlite3BtreeEnter.exit.i4431, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.gdh = getelementptr inbounds nuw i8, ptr %i.gcm, i64 20 ; 2 uses
  %i.gdi = load i32, ptr %i.gdh, align 4, !tbaa !593
  %i.gdj = add nsw i32 %i.gdi, 1
  store i32 %i.gdj, ptr %i.gdh, align 4, !tbaa !593
  %i.gdk = getelementptr inbounds nuw i8, ptr %i.gcm, i64 18
  %i.gdl = load i8, ptr %i.gdk, align 2, !tbaa !594
  %.not4.i.i4430 = icmp eq i8 %i.gdl, 0
  br i1 %.not4.i.i4430, label %bb.apk, label %sqlite3BtreeEnter.exit.i4431

bb.apk:                                           ; preds = %bb.apj
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.gcm)
  br label %sqlite3BtreeEnter.exit.i4431

sqlite3BtreeEnter.exit.i4431:                     ; preds = %bb.apk, %bb.apj, %bb.api
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i8 0, i64 120, i1 false)
  store ptr %i.an, ptr %i.dy, align 8, !tbaa !2809
  store ptr %i.gcw, ptr %4, align 8, !tbaa !2811
  %i.gdm = load ptr, ptr %i.gcw, align 8, !tbaa !73
  store ptr %i.gdm, ptr %i.dx, align 8, !tbaa !2812
  %i.gdn = getelementptr i8, ptr %i.gcw, i64 64
  %.val.i4432 = load i32, ptr %i.gdn, align 8, !tbaa !668 ; 3 uses
  store i32 %.val.i4432, ptr %i.dz, align 8, !tbaa !2813
  store i32 %i.gcu, ptr %i.ea, align 4, !tbaa !2814
  store ptr %i.c, ptr %i.ec, align 8, !tbaa !282
  store i32 100, ptr %i.ed, align 8, !tbaa !280
  store i32 1000000000, ptr %i.ee, align 4, !tbaa !299
  store i8 1, ptr %i.eg, align 1, !tbaa !2815
  %i.gdo = icmp eq i32 %.val.i4432, 0
  br i1 %i.gdo, label %checkOom.exit.i, label %bb.apl

bb.apl:                                           ; preds = %sqlite3BtreeEnter.exit.i4431
  %i.gdp = lshr i32 %.val.i4432, 3
  %i.gdq = add nuw nsw i32 %i.gdp, 1
  %i.gdr = zext nneg i32 %i.gdq to i64            ; 2 uses
  %i.gds = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.gdr) ; 3 uses
  %.not.i96.i = icmp eq ptr %i.gds, null
  br i1 %.not.i96.i, label %bb.apm, label %bb.apn

bb.apm:                                           ; preds = %bb.apl
  store ptr null, ptr %i.eh, align 8, !tbaa !2816
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.gdt = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.gdu = icmp eq i32 %i.gdt, 0
  br i1 %i.gdu, label %checkOom.exit.i.sink.split, label %checkOom.exit.i

bb.apn:                                           ; preds = %bb.apl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gds, i8 0, i64 range(i64 -180388626400, 180388626381) %i.gdr, i1 false)
  store ptr %i.gds, ptr %i.eh, align 8, !tbaa !2816
  %i.gdv = getelementptr inbounds nuw i8, ptr %i.gcw, i64 52 ; 4 uses
  %i.gdw = load i32, ptr %i.gdv, align 4, !tbaa !131
  %i.gdx = call fastcc ptr @pcache1Alloc(i32 noundef %i.gdw) ; 2 uses
  store ptr %i.gdx, ptr %i.ei, align 8, !tbaa !2819
  %i.gdy = icmp eq ptr %i.gdx, null
  br i1 %i.gdy, label %bb.apo, label %bb.app

bb.apo:                                           ; preds = %bb.apn
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.gdz = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.gea = icmp eq i32 %i.gdz, 0
  br i1 %i.gea, label %checkOom.exit.i.sink.split, label %checkOom.exit.i

bb.app:                                           ; preds = %bb.apn
  %i.geb = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !5
  %i.gec = load i32, ptr %i.gdv, align 4, !tbaa !131
  %i.ged = udiv i32 %i.geb, %i.gec
  %i.gee = add i32 %i.ged, 1                      ; 3 uses
  %i.gef = load i32, ptr %i.dz, align 8, !tbaa !2813
  %.not81.i = icmp ugt i32 %i.gee, %i.gef
  br i1 %.not81.i, label %bb.apr, label %bb.apq

bb.apq:                                           ; preds = %bb.app
  %.val93.i = load ptr, ptr %i.eh, align 8, !tbaa !2816
  %i.geg = and i32 %i.gee, 7
  %i.geh = shl nuw nsw i32 1, %i.geg
  %i.gei = lshr i32 %i.gee, 3
  %i.gej = zext nneg i32 %i.gei to i64
  %i.gek = getelementptr inbounds nuw i8, ptr %.val93.i, i64 %i.gej ; 2 uses
  %i.gel = load i8, ptr %i.gek, align 1, !tbaa !227
  %i.gem = trunc nuw i32 %i.geh to i8
  %i.gen = or i8 %i.gel, %i.gem
  store i8 %i.gen, ptr %i.gek, align 1, !tbaa !227
  br label %bb.apr

bb.apr:                                           ; preds = %bb.apq, %bb.app
  br i1 %.not82.i, label %bb.apt, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  store ptr @.str.410, ptr %i.ej, align 8, !tbaa !2820
  %i.geo = getelementptr inbounds nuw i8, ptr %i.gcw, i64 24
  %i.gep = load ptr, ptr %i.geo, align 8, !tbaa !658
  %i.geq = getelementptr inbounds nuw i8, ptr %i.gep, i64 80
  %i.ger = load ptr, ptr %i.geq, align 8, !tbaa !659 ; 2 uses
  %i.ges = getelementptr inbounds nuw i8, ptr %i.ger, i64 32
  %i.get = load i32, ptr %i.ges, align 1
  %i.geu = call i32 @llvm.bswap.i32(i32 %i.get)
  %i.gev = getelementptr inbounds nuw i8, ptr %i.ger, i64 36
  %i.gew = load i32, ptr %i.gev, align 1
  %i.gex = call i32 @llvm.bswap.i32(i32 %i.gew)
  call fastcc void @checkList(ptr noundef %4, i32 noundef 1, i32 noundef %i.geu, i32 noundef %i.gex)
  store ptr null, ptr %i.ej, align 8, !tbaa !2820
  br label %bb.apt

bb.apt:                                           ; preds = %bb.aps, %bb.apr
  br i1 %i.gdc, label %bb.apy, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %i.gey = getelementptr inbounds nuw i8, ptr %i.gcw, i64 33
  %i.gez = load i8, ptr %i.gey, align 1, !tbaa !742
  %.not83.i = icmp eq i8 %i.gez, 0
  br i1 %.not83.i, label %bb.apw, label %.preheader109.i

.preheader109.i:                                  ; preds = %bb.apu
  %i.gfa = icmp sgt i32 %i.gby, 0
  br i1 %i.gfa, label %.lr.ph.preheader.i, label %._crit_edge.i4433

.lr.ph.preheader.i:                               ; preds = %.preheader109.i
  %wide.trip.count.i4445 = zext nneg i32 %i.gby to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gby, 8
  br i1 %min.iters.check, label %.lr.ph.i4446.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i4445, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gfd, %vector.body ]
  %vec.phi12573 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gfe, %vector.body ]
  %i.gfb = getelementptr inbounds nuw [4 x i8], ptr %i.gcn, i64 %index ; 2 uses
  %i.gfc = getelementptr inbounds nuw i8, ptr %i.gfb, i64 16
  %wide.load = load <4 x i32>, ptr %i.gfb, align 4, !tbaa !5
  %wide.load12574 = load <4 x i32>, ptr %i.gfc, align 4, !tbaa !5
  %i.gfd = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.gfe = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi12573, <4 x i32> %wide.load12574) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gff = icmp eq i64 %index.next, %n.vec
  br i1 %i.gff, label %middle.block, label %vector.body, !llvm.loop !2821

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.gfd, <4 x i32> %i.gfe)
  %i.gfg = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i4445
  br i1 %cmp.n, label %._crit_edge.i4433, label %.lr.ph.i4446.preheader

.lr.ph.i4446.preheader:                           ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i4447.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.071110.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gfg, %middle.block ]
  br label %.lr.ph.i4446

.lr.ph.i4446:                                     ; preds = %.lr.ph.i4446.preheader, %.lr.ph.i4446
  %indvars.iv.i4447 = phi i64 [ %indvars.iv.next.i4448, %.lr.ph.i4446 ], [ %indvars.iv.i4447.ph, %.lr.ph.i4446.preheader ] ; 2 uses
  %.071110.i = phi i32 [ %spec.select92.i, %.lr.ph.i4446 ], [ %.071110.i.ph, %.lr.ph.i4446.preheader ]
  %i.gfh = getelementptr inbounds nuw [4 x i8], ptr %i.gcn, i64 %indvars.iv.i4447
  %i.gfi = load i32, ptr %i.gfh, align 4, !tbaa !5
  %spec.select92.i = call i32 @llvm.umax.i32(i32 %.071110.i, i32 %i.gfi) ; 2 uses
  %indvars.iv.next.i4448 = add nuw nsw i64 %indvars.iv.i4447, 1 ; 2 uses
  %exitcond.not.i4449 = icmp eq i64 %indvars.iv.next.i4448, %wide.trip.count.i4445
  br i1 %exitcond.not.i4449, label %._crit_edge.i4433, label %.lr.ph.i4446, !llvm.loop !2822

._crit_edge.i4433:                                ; preds = %.lr.ph.i4446, %middle.block, %.preheader109.i
  %.071.lcssa.i = phi i32 [ 0, %.preheader109.i ], [ %i.gfg, %middle.block ], [ %spec.select92.i, %.lr.ph.i4446 ] ; 2 uses
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gcw, i64 24
  %i.gfk = load ptr, ptr %i.gfj, align 8, !tbaa !658
  %i.gfl = getelementptr inbounds nuw i8, ptr %i.gfk, i64 80
  %i.gfm = load ptr, ptr %i.gfl, align 8, !tbaa !659
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.gfm, i64 52
  %i.gfo = load i32, ptr %i.gfn, align 1
  %i.gfp = call i32 @llvm.bswap.i32(i32 %i.gfo)   ; 2 uses
  %.not85.i = icmp eq i32 %.071.lcssa.i, %i.gfp
  br i1 %.not85.i, label %bb.apy, label %bb.apv

bb.apv:                                           ; preds = %._crit_edge.i4433
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %4, ptr noundef nonnull @.str.411, i32 noundef %.071.lcssa.i, i32 noundef %i.gfp)
  br label %bb.apy

bb.apw:                                           ; preds = %bb.apu
  %i.gfq = getelementptr inbounds nuw i8, ptr %i.gcw, i64 24
  %i.gfr = load ptr, ptr %i.gfq, align 8, !tbaa !658
  %i.gfs = getelementptr inbounds nuw i8, ptr %i.gfr, i64 80
  %i.gft = load ptr, ptr %i.gfs, align 8, !tbaa !659
  %i.gfu = getelementptr inbounds nuw i8, ptr %i.gft, i64 64
  %20 = load <4 x i8>, ptr %i.gfu, align 1, !tbaa !227
  %21 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %20)
  %i.gfv = icmp eq i8 %21, 0
  br i1 %i.gfv, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %4, ptr noundef nonnull @.str.412)
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %bb.apw, %bb.apv, %._crit_edge.i4433, %bb.apt
  %i.gfw = load ptr, ptr %i.gcx, align 8, !tbaa !1942
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.gfw, i64 48 ; 2 uses
  %i.gfy = load i64, ptr %i.gfx, align 8, !tbaa !545
  %i.gfz = and i64 %i.gfy, -2097153
  store i64 %i.gfz, ptr %i.gfx, align 8, !tbaa !545
  %i.gga = icmp sgt i32 %i.gby, 0
  %i.ggb = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ggc = icmp ne i32 %i.ggb, 0
  %i.ggd = select i1 %i.gga, i1 %i.ggc, i1 false
  br i1 %i.ggd, label %.lr.ph114.i, label %._crit_edge115.i

.lr.ph114.i:                                      ; preds = %bb.apy
  %i.gge = getelementptr inbounds nuw i8, ptr %i.gcw, i64 33
  %i.ggf = zext nneg i32 %i.gby to i64            ; 2 uses
  br i1 %i.gdc, label %.lr.ph114.split.us.i, label %.lr.ph114.split.i

.lr.ph114.split.us.i:                             ; preds = %.lr.ph114.i, %sqlite3MemSetArrayInt64.exit.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %sqlite3MemSetArrayInt64.exit.us.i ], [ 0, %.lr.ph114.i ] ; 3 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !2823
  %i.ggg = getelementptr inbounds nuw [4 x i8], ptr %i.gcn, i64 %indvars.iv123.i
  %i.ggh = load i32, ptr %i.ggg, align 4, !tbaa !5 ; 3 uses
  %.not90.us.i = icmp eq i32 %i.ggh, 0
  br i1 %.not90.us.i, label %bb.aqa, label %bb.apz

bb.apz:                                           ; preds = %.lr.ph114.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 %i.ggh, ptr %i.en, align 8, !tbaa !2824
  %i.ggi = call fastcc i32 @checkTreePage(ptr noundef %4, i32 noundef %i.ggh, ptr noundef %i.d, i64 noundef 9223372036854775807) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %.pre127.i = load i64, ptr %i.ek, align 8, !tbaa !2823
  br label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz, %.lr.ph114.split.us.i
  %i.ggj = phi i64 [ %.pre127.i, %bb.apz ], [ 0, %.lr.ph114.split.us.i ] ; 2 uses
  %i.ggk = getelementptr inbounds nuw [56 x i8], ptr %i.gcr, i64 %indvars.iv123.i ; 3 uses
  %i.ggl = getelementptr inbounds nuw i8, ptr %i.ggk, i64 20 ; 2 uses
  %i.ggm = load i16, ptr %i.ggl, align 4, !tbaa !162
  %i.ggn = and i16 %i.ggm, -28672
  %.not.i.i.us.i = icmp eq i16 %i.ggn, 0
  br i1 %.not.i.i.us.i, label %bb.aqc, label %bb.aqb

bb.aqb:                                           ; preds = %bb.aqa
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ggk, i64 noundef %i.ggj)
  br label %sqlite3MemSetArrayInt64.exit.us.i

bb.aqc:                                           ; preds = %bb.aqa
  store i64 %i.ggj, ptr %i.ggk, align 8, !tbaa !227
  store i16 4, ptr %i.ggl, align 4, !tbaa !162
  br label %sqlite3MemSetArrayInt64.exit.us.i

sqlite3MemSetArrayInt64.exit.us.i:                ; preds = %bb.aqc, %bb.aqb
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.ggo = icmp samesign ult i64 %indvars.iv.next124.i, %i.ggf
  %i.ggp = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ggq = icmp ne i32 %i.ggp, 0
  %i.ggr = select i1 %i.ggo, i1 %i.ggq, i1 false
  br i1 %i.ggr, label %.lr.ph114.split.us.i, label %._crit_edge115.i, !llvm.loop !2825

.lr.ph114.split.i:                                ; preds = %.lr.ph114.i, %sqlite3MemSetArrayInt64.exit.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %sqlite3MemSetArrayInt64.exit.i ], [ 0, %.lr.ph114.i ] ; 3 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !2823
  %i.ggs = getelementptr inbounds nuw [4 x i8], ptr %i.gcn, i64 %indvars.iv120.i ; 2 uses
  %i.ggt = load i32, ptr %i.ggs, align 4, !tbaa !5 ; 6 uses
  %.not90.i = icmp eq i32 %i.ggt, 0
  br i1 %.not90.i, label %bb.aqk, label %bb.aqd

bb.aqd:                                           ; preds = %.lr.ph114.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.ggu = load i8, ptr %i.gge, align 1, !tbaa !742
  %.not91.i = icmp eq i8 %i.ggu, 0
  %i.ggv = icmp eq i32 %i.ggt, 1
  %i.ggw = or i1 %i.ggv, %.not91.i
  br i1 %i.ggw, label %bb.aqj, label %bb.aqe

bb.aqe:                                           ; preds = %bb.aqd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ggx = load ptr, ptr %4, align 8, !tbaa !2811
  %i.ggy = call fastcc i32 @ptrmapGet(ptr noundef %i.ggx, i32 noundef %i.ggt, ptr noundef %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.ggy, label %checkOom.exit.i.i [
    i32 0, label %bb.aqh
    i32 3082, label %bb.aqf
    i32 7, label %bb.aqf
  ]

bb.aqf:                                           ; preds = %bb.aqe, %bb.aqe
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.ggz = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.gha = icmp eq i32 %i.ggz, 0
  br i1 %i.gha, label %bb.aqg, label %checkOom.exit.i.i

bb.aqg:                                           ; preds = %bb.aqf
  store i32 1, ptr %i.em, align 8, !tbaa !2818
  br label %checkOom.exit.i.i

checkOom.exit.i.i:                                ; preds = %bb.aqg, %bb.aqf, %bb.aqe
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %4, ptr noundef nonnull @.str.423, i32 noundef %i.ggt)
  br label %checkPtrmap.exit.i

bb.aqh:                                           ; preds = %bb.aqe
  %i.ghb = load i8, ptr %i.a, align 1, !tbaa !227 ; 2 uses
  %.not14.i.i4444 = icmp eq i8 %i.ghb, 1
  %i.ghc = load i32, ptr %i.b, align 4            ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ghc, 0
  %or.cond.i.i = select i1 %.not14.i.i4444, i1 %.not15.i.i, i1 false
  br i1 %or.cond.i.i, label %checkPtrmap.exit.i, label %bb.aqi

bb.aqi:                                           ; preds = %bb.aqh
  %i.ghd = zext i8 %i.ghb to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %4, ptr noundef nonnull @.str.424, i32 noundef %i.ggt, i32 noundef 1, i32 noundef 0, i32 noundef %i.ghd, i32 noundef %i.ghc)
  br label %checkPtrmap.exit.i

checkPtrmap.exit.i:                               ; preds = %bb.aqi, %bb.aqh, %checkOom.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.pre.i4442 = load i32, ptr %i.ggs, align 4, !tbaa !5
  br label %bb.aqj

bb.aqj:                                           ; preds = %checkPtrmap.exit.i, %bb.aqd
  %i.ghe = phi i32 [ %.pre.i4442, %checkPtrmap.exit.i ], [ %i.ggt, %bb.aqd ] ; 2 uses
  store i32 %i.ghe, ptr %i.en, align 8, !tbaa !2824
  %i.ghf = call fastcc i32 @checkTreePage(ptr noundef %4, i32 noundef %i.ghe, ptr noundef %i.d, i64 noundef 9223372036854775807) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %.pre126.i = load i64, ptr %i.ek, align 8, !tbaa !2823
  br label %bb.aqk

bb.aqk:                                           ; preds = %bb.aqj, %.lr.ph114.split.i
  %i.ghg = phi i64 [ %.pre126.i, %bb.aqj ], [ 0, %.lr.ph114.split.i ] ; 2 uses
  %i.ghh = getelementptr inbounds nuw [56 x i8], ptr %i.gcr, i64 %indvars.iv120.i ; 3 uses
  %i.ghi = getelementptr inbounds nuw i8, ptr %i.ghh, i64 20 ; 2 uses
  %i.ghj = load i16, ptr %i.ghi, align 4, !tbaa !162
  %i.ghk = and i16 %i.ghj, -28672
  %.not.i.i.i4443 = icmp eq i16 %i.ghk, 0
  br i1 %.not.i.i.i4443, label %bb.aqm, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ghh, i64 noundef %i.ghg)
  br label %sqlite3MemSetArrayInt64.exit.i

bb.aqm:                                           ; preds = %bb.aqk
  store i64 %i.ghg, ptr %i.ghh, align 8, !tbaa !227
  store i16 4, ptr %i.ghi, align 4, !tbaa !162
  br label %sqlite3MemSetArrayInt64.exit.i

sqlite3MemSetArrayInt64.exit.i:                   ; preds = %bb.aqm, %bb.aql
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.ghl = icmp samesign ult i64 %indvars.iv.next121.i, %i.ggf
  %i.ghm = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ghn = icmp ne i32 %i.ghm, 0
  %i.gho = select i1 %i.ghl, i1 %i.ghn, i1 false
  br i1 %i.gho, label %.lr.ph114.split.i, label %._crit_edge115.i, !llvm.loop !2825

._crit_edge115.i:                                 ; preds = %sqlite3MemSetArrayInt64.exit.i, %sqlite3MemSetArrayInt64.exit.us.i, %bb.apy
  %i.ghp = phi i32 [ %i.ggp, %sqlite3MemSetArrayInt64.exit.us.i ], [ %i.ggb, %bb.apy ], [ %i.ghm, %sqlite3MemSetArrayInt64.exit.i ]
  %i.ghq = load ptr, ptr %i.gcx, align 8, !tbaa !1942
  %i.ghr = getelementptr inbounds nuw i8, ptr %i.ghq, i64 48
  store i64 %i.gda, ptr %i.ghr, align 8, !tbaa !545
  br i1 %i.gdc, label %checkOom.exit.i, label %.preheader.i4434

.preheader.i4434:                                 ; preds = %._crit_edge115.i
  %i.ghs = load i32, ptr %i.dz, align 8, !tbaa !2813
  %i.ght = icmp ne i32 %i.ghs, 0
  %i.ghu = icmp ne i32 %i.ghp, 0
  %i.ghv = select i1 %i.ght, i1 %i.ghu, i1 false
  br i1 %i.ghv, label %.lr.ph117.i, label %checkOom.exit.i

.lr.ph117.i:                                      ; preds = %.preheader.i4434
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.gcw, i64 56 ; 2 uses
  %i.ghx = getelementptr inbounds nuw i8, ptr %i.gcw, i64 33 ; 2 uses
  br label %bb.aqn

bb.aqn:                                           ; preds = %.thread.i, %.lr.ph117.i
  %.2116.i = phi i32 [ 1, %.lr.ph117.i ], [ %i.gjj, %.thread.i ] ; 11 uses
  %.val95.i = load ptr, ptr %i.eh, align 8, !tbaa !2816
  %i.ghy = lshr i32 %.2116.i, 3
  %i.ghz = zext nneg i32 %i.ghy to i64            ; 2 uses
  %i.gia = getelementptr inbounds nuw i8, ptr %.val95.i, i64 %i.ghz
  %i.gib = load i8, ptr %i.gia, align 1, !tbaa !227
  %i.gic = zext i8 %i.gib to i32
  %i.gid = and i32 %.2116.i, 7
  %i.gie = shl nuw nsw i32 1, %i.gid              ; 2 uses
  %i.gif = and i32 %i.gie, %i.gic
  %i.gig = icmp eq i32 %i.gif, 0
  br i1 %i.gig, label %bb.aqo, label %.thread146.i

bb.aqo:                                           ; preds = %bb.aqn
  %i.gih = icmp ult i32 %.2116.i, 2
  br i1 %i.gih, label %ptrmapPageno.exit.i, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.gii = load i32, ptr %i.ghw, align 8, !tbaa !749
  %i.gij = udiv i32 %i.gii, 5
end_hunk_2
begin_hunk_3_@sqlite3BtreeOpen:bb.a
  %.not5.i255.i = icmp eq i32 %i.mx, 0
  br i1 %.not5.i255.i, label %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i256.i, label %setSectorSize.exit263.i

sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i256.i: ; preds = %sqlite3OsDeviceCharacteristics.exit.i254.i
  %.pre.i257.i = load ptr, ptr %i.gr, align 8, !tbaa !524 ; 2 uses
  %.pre8.i258.i = load ptr, ptr %.pre.i257.i, align 8, !tbaa !473
  %i.my = getelementptr inbounds nuw i8, ptr %.pre8.i258.i, i64 88
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !2079 ; 2 uses
  %.not.i.i.i259.i = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i259.i, label %setSectorSize.exit263.i, label %sqlite3OsSectorSize.exit.i.i260.i

sqlite3OsSectorSize.exit.i.i260.i:                ; preds = %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i256.i
  %i.na = call i32 %i.mz(ptr noundef nonnull %.pre.i257.i) #59, !inline_history !2920
  %.fr.i.i261.i = freeze i32 %i.na                ; 2 uses
  %i.nb = icmp slt i32 %.fr.i.i261.i, 32
  %i.nc = call i32 @llvm.umin.i32(i32 %.fr.i.i261.i, i32 65536)
  %spec.select.i.i262.i = select i1 %i.nb, i32 512, i32 %i.nc
  br label %setSectorSize.exit263.i

setSectorSize.exit263.i:                          ; preds = %sqlite3OsSectorSize.exit.i.i260.i, %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i256.i, %sqlite3OsDeviceCharacteristics.exit.i254.i, %sqlite3PagerSetFlags.exit.i
  %.sink.i253.i = phi i32 [ 512, %sqlite3PagerSetFlags.exit.i ], [ 512, %sqlite3OsDeviceCharacteristics.exit.i254.i ], [ 4096, %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i256.i ], [ %spec.select.i.i262.i, %sqlite3OsSectorSize.exit.i.i260.i ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.fz, i64 184
  store i32 %.sink.i253.i, ptr %i.nd, align 8, !tbaa !679
  br i1 %i.dd, label %bb.ck, label %.sink.split.i

bb.ck:                                            ; preds = %setSectorSize.exit263.i
  %i.ne = icmp ne i32 %.120366.i, 0
  %or.cond.i = select i1 %.not.i282, i1 true, i1 %i.ne
  br i1 %or.cond.i, label %.sink.split.i, label %bb.cl

.sink.split.i:                                    ; preds = %bb.ck, %setSectorSize.exit263.i
  %.sink113.i = phi i8 [ 2, %setSectorSize.exit263.i ], [ 4, %bb.ck ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.fz, i64 9
  store i8 %.sink113.i, ptr %i.nf, align 1, !tbaa !665
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split.i, %bb.ck
  %i.ng = getelementptr inbounds nuw i8, ptr %i.fz, i64 264
  store ptr @pageReinit, ptr %i.ng, align 8, !tbaa !2102
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !678
  %.not.i264.i = icmp eq i32 %i.ni, 0             ; 2 uses
  br i1 %.not.i264.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nj = getelementptr inbounds nuw i8, ptr %i.fz, i64 272
  store ptr @getPageError, ptr %i.nj, align 8, !tbaa !514
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.nk = getelementptr inbounds nuw i8, ptr %i.fz, i64 27
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !739
  %.not5.i265.i = icmp eq i8 %i.nl, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fz, i64 272 ; 2 uses
  br i1 %.not5.i265.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr @getPageMMap, ptr %i.nm, align 8, !tbaa !514
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store ptr @getPageNormal, ptr %i.nm, align 8, !tbaa !514
  br label %bb.cq

sqlite3PagerReadFileheader.exit.thread363:        ; preds = %bb.ao, %bb.av, %bb.au, %sqlite3_mutex_enter.exit.i.i.i, %bb.ch, %sqlite3_mutex_enter.exit.i.i, %sqlite3_mutex_enter.exit.i.i270.i, %bb.ba, %bb.bb, %bb.aw, %bb.ci, %bb.al
  %.2.i.ph = phi i32 [ 7, %bb.ao ], [ %.1207.ph.i, %bb.av ], [ %.1207.ph.i, %bb.au ], [ %.1207.ph.i, %sqlite3_mutex_enter.exit.i.i.i ], [ %.7.ph.i, %bb.ch ], [ %.7.ph.i, %sqlite3_mutex_enter.exit.i.i ], [ 7, %sqlite3_mutex_enter.exit.i.i270.i ], [ 7, %bb.ba ], [ 7, %bb.bb ], [ 7, %bb.aw ], [ %.7.ph.i, %bb.ci ], [ 7, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.thread398

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  store ptr %i.fz, ptr %i.db, align 8, !tbaa !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !1285 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  store i64 %i.no, ptr %i.np, align 8, !tbaa !2055
  %i.nq = load ptr, ptr %i.gr, align 8, !tbaa !524 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !473 ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i284, label %sqlite3PagerSetMmapLimit.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !1520
  %i.nt = icmp sgt i32 %i.ns, 2
  br i1 %i.nt, label %sqlite3OsFileControlHint.exit.i.i, label %sqlite3PagerSetMmapLimit.exit

sqlite3OsFileControlHint.exit.i.i:                ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i64 %i.no, ptr %i.a, align 8, !tbaa !18
  %i.nu = icmp sgt i64 %i.no, 0                   ; 2 uses
  %i.nv = zext i1 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.fz, i64 27
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !739
  %i.nx = getelementptr inbounds nuw i8, ptr %i.fz, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.nu, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i264.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.nx, align 8, !tbaa !514
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nr, i64 80
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !729
  %i.oa = call i32 %i.nz(ptr noundef nonnull %i.nq, i32 noundef 18, ptr noundef nonnull %i.a) #59, !inline_history !2927 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !73
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %bb.cq, %bb.cr, %sqlite3OsFileControlHint.exit.i.i
  %i.ob = phi ptr [ %i.fz, %bb.cq ], [ %i.fz, %bb.cr ], [ %.pre, %sqlite3OsFileControlHint.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.d, i8 0, i64 100, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 72
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !524 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !473 ; 2 uses
  %.not.i286 = icmp eq ptr %i.oe, null
  br i1 %.not.i286, label %sqlite3PagerReadFileheader.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !1433
  %i.oh = call i32 %i.og(ptr noundef nonnull %i.od, ptr noundef nonnull %i.d, i32 noundef 100, i64 noundef 0) #59, !inline_history !2928 ; 2 uses
  switch i32 %i.oh, label %.thread398 [
    i32 522, label %sqlite3PagerReadFileheader.exit.thread
    i32 0, label %sqlite3PagerReadFileheader.exit.thread
  ]

sqlite3PagerReadFileheader.exit.thread:           ; preds = %bb.cs, %bb.cs, %sqlite3PagerSetMmapLimit.exit
  %i.oi = trunc i32 %i.q to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store i8 %i.oi, ptr %i.oj, align 8, !tbaa !2472
  %i.ok = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %2, ptr %i.ok, align 8, !tbaa !1942
  %i.ol = load ptr, ptr %i.db, align 8, !tbaa !73 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 232 ; 2 uses
  store ptr @btreeInvokeBusyHandler, ptr %i.om, align 8, !tbaa !1981
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 240
  store ptr %i.db, ptr %i.on, align 8, !tbaa !1982
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 72
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !524 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !473 ; 2 uses
  %.not.i.i288 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i288, label %sqlite3PagerSetBusyHandler.exit, label %bb.ct

bb.ct:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !729
  %i.ot = call i32 %i.os(ptr noundef nonnull %i.op, i32 noundef 15, ptr noundef nonnull %i.om) #59, !inline_history !2929 ; 0 uses
  %.pre462 = load ptr, ptr %i.db, align 8, !tbaa !73
  br label %sqlite3PagerSetBusyHandler.exit

sqlite3PagerSetBusyHandler.exit:                  ; preds = %sqlite3PagerReadFileheader.exit.thread, %bb.ct
  %i.ou = phi ptr [ %i.ol, %sqlite3PagerReadFileheader.exit.thread ], [ %.pre462, %bb.ct ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.db, ptr %i.ov, align 8, !tbaa !67
  %i.ow = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ox = getelementptr i8, ptr %i.ou, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i8 0, i64 16, i1 false)
  %.val = load i8, ptr %i.ox, align 2, !tbaa !1947
  %.not232 = icmp eq i8 %.val, 0
  br i1 %.not232, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %sqlite3PagerSetBusyHandler.exit
  %i.oy = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 8, !tbaa !717
  %i.pa = or i16 %i.oz, 1
  store i16 %i.pa, ptr %i.oy, align 8, !tbaa !717
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %sqlite3PagerSetBusyHandler.exit
  %i.pb = load i16, ptr %i.da, align 16
  %i.pc = zext i16 %i.pb to i32
  %i.pd = shl nuw nsw i32 %i.pc, 8                ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.db, i64 52 ; 4 uses
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !131
  %i.pf = add nsw i32 %i.pd, -65537
  %or.cond255 = icmp ult i32 %i.pf, -65025
  br i1 %or.cond255, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pg = add nuw nsw i32 %i.pd, 130816
  %i.ph = and i32 %i.pg, %i.pd
  %.not233 = icmp eq i32 %i.ph, 0
  br i1 %.not233, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  store i32 0, ptr %i.pe, align 4, !tbaa !131
  %or.cond5 = or i1 %i.e, %i.o
  br i1 %or.cond5, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pi = getelementptr inbounds nuw i8, ptr %i.db, i64 33
  store i8 0, ptr %i.pi, align 1, !tbaa !742
  %i.pj = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  store i8 0, ptr %i.pj, align 2, !tbaa !691
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.pk = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.pl = load i8, ptr %i.pk, align 4, !tbaa !227
  %i.pm = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 8, !tbaa !717
  %i.po = or i16 %i.pn, 2
  store i16 %i.po, ptr %i.pm, align 8, !tbaa !717
  %i.pp = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %6 = load <4 x i8>, ptr %i.pp, align 4, !tbaa !227
  %7 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %6)
  %i.pq = icmp ne i8 %7, 0
  %i.pr = zext i1 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.db, i64 33
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !742
  %i.pt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %8 = load <4 x i8>, ptr %i.pt, align 16, !tbaa !227
  %9 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %8)
  %i.pu = icmp ne i8 %9, 0
  %i.pv = zext i1 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  store i8 %i.pv, ptr %i.pw, align 2, !tbaa !691
  %i.px = zext i8 %i.pl to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cx, %bb.cy, %bb.cz
  %.0199 = phi i32 [ %i.px, %bb.cz ], [ 0, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %i.py = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %i.ou, ptr noundef nonnull %i.pe, i32 noundef %.0199) ; 2 uses
  %.not236 = icmp eq i32 %i.py, 0
  br i1 %.not236, label %bb.db, label %.thread398

bb.db:                                            ; preds = %bb.da
  %i.pz = load i32, ptr %i.pe, align 4, !tbaa !131
  %i.qa = sub i32 %i.pz, %.0199
  %i.qb = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store i32 %i.qa, ptr %i.qb, align 8, !tbaa !749
  %i.qc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store i32 1, ptr %i.qc, align 8, !tbaa !96
  %i.qd = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !592
  %.not237 = icmp eq i8 %i.qe, 0
  br i1 %.not237, label %sqlite3_mutex_leave.exit298.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qf = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
  %.not.i289 = icmp eq i8 %i.qf, 0
  br i1 %.not.i289, label %sqlite3_mutex_enter.exit296.thread, label %sqlite3MutexAlloc.exit291

sqlite3MutexAlloc.exit291:                        ; preds = %bb.dc
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !194
  %i.qh = call ptr %i.qg(i32 noundef 2) #59, !inline_history !195 ; 3 uses
  %.pr366 = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !193
  %.not238 = icmp eq i8 %.pr366, 0
  br i1 %.not238, label %bb.dd, label %sqlite3MutexAlloc.exit294

sqlite3MutexAlloc.exit294:                        ; preds = %sqlite3MutexAlloc.exit291
  %i.qi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !194
  %i.qj = call ptr %i.qi(i32 noundef 0) #59, !inline_history !195 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  store ptr %i.qj, ptr %i.qk, align 8, !tbaa !1940
  %i.ql = icmp eq ptr %i.qj, null
  br i1 %i.ql, label %.thread398, label %bb.dd

bb.dd:                                            ; preds = %sqlite3MutexAlloc.exit294, %sqlite3MutexAlloc.exit291
  %.not.i295 = icmp eq ptr %i.qh, null
  br i1 %.not.i295, label %sqlite3_mutex_enter.exit296.thread, label %bb.de

sqlite3_mutex_enter.exit296.thread:               ; preds = %bb.dd, %bb.dc
  %i.qm = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qn = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  store ptr %i.qm, ptr %i.qn, align 8, !tbaa !2569
  store ptr %i.db, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  br label %sqlite3_mutex_leave.exit298.thread

bb.de:                                            ; preds = %bb.dd
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.qo(ptr noundef nonnull %i.qh) #59, !inline_history !17
  %i.qp = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qq = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !2569
  store ptr %i.db, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.qr(ptr noundef nonnull %i.qh) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit298.thread

sqlite3_mutex_leave.exit298.thread:               ; preds = %bb.de, %sqlite3_mutex_enter.exit296.thread, %bb.db, %sqlite3_free.exit
  %.1191357 = phi ptr [ %.0.i262325333338, %sqlite3_free.exit ], [ %.1191359, %bb.db ], [ %.1191359, %sqlite3_mutex_enter.exit296.thread ], [ %.1191359, %bb.de ] ; 2 uses
  %.3188 = phi ptr [ %.0185439, %sqlite3_free.exit ], [ %i.db, %bb.db ], [ %i.db, %sqlite3_mutex_enter.exit296.thread ], [ %i.db, %bb.de ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.u, i64 17 ; 4 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !592
  %.not239 = icmp eq i8 %i.qt, 0
  br i1 %.not239, label %sqlite3_mutex_leave.exit298.thread390.thread, label %.preheader430

sqlite3_mutex_leave.exit298.thread390.thread:     ; preds = %sqlite3_mutex_leave.exit298.thread
  store ptr %i.u, ptr %3, align 8, !tbaa !714
  %i.qu = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !67
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 72
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !2574
  br label %sqlite3BtreeSchema.exit

.preheader430:                                    ; preds = %sqlite3_mutex_leave.exit298.thread
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !60 ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph447, label %sqlite3_mutex_leave.exit298.thread390.thread512

.lr.ph447:                                        ; preds = %.preheader430
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !61
  %wide.trip.count = zext nneg i32 %i.qz to i64
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph447, %bb.dl
  %indvars.iv459 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next460, %bb.dl ] ; 2 uses
  %i.rd = getelementptr inbounds nuw [32 x i8], ptr %i.rc, i64 %indvars.iv459
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !62 ; 3 uses
  %.not240 = icmp eq ptr %i.rf, null
  br i1 %.not240, label %bb.dl, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 17
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !592
  %.not241 = icmp eq i8 %i.rh, 0
  br i1 %.not241, label %bb.dl, label %.preheader429

.preheader429:                                    ; preds = %bb.dg, %.preheader429
  %.0179 = phi ptr [ %i.rj, %.preheader429 ], [ %i.rf, %bb.dg ] ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0179, i64 40
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !2575 ; 2 uses
  %.not242 = icmp eq ptr %i.rj, null
  br i1 %.not242, label %bb.dh, label %.preheader429, !llvm.loop !2930

bb.dh:                                            ; preds = %.preheader429
  %i.rk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !67 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0179, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !67
  %i.ro = icmp ult ptr %i.rl, %i.rn
  br i1 %i.ro, label %bb.di, label %.preheader

bb.di:                                            ; preds = %bb.dh
  %i.rp = getelementptr inbounds nuw i8, ptr %.0179, i64 40
  %i.rq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.0179, ptr %i.rq, align 8, !tbaa !1943
  %i.rr = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %i.rr, align 8, !tbaa !2575
  store ptr %i.u, ptr %i.rp, align 8, !tbaa !2575
  br label %sqlite3_mutex_leave.exit298.thread390.thread512

.preheader:                                       ; preds = %bb.dh, %bb.dj
  %.1180 = phi ptr [ %i.rt, %bb.dj ], [ %.0179, %bb.dh ] ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.1180, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !1943 ; 5 uses
  %.not243 = icmp eq ptr %i.rt, null
  br i1 %.not243, label %.critedge.thread, label %bb.dj

bb.dj:                                            ; preds = %.preheader
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !67
  %i.rw = icmp ult ptr %i.rv, %i.rl
  br i1 %i.rw, label %.preheader, label %bb.dk, !llvm.loop !2931

bb.dk:                                            ; preds = %bb.dj
  %i.rx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.rt, ptr %i.rx, align 8, !tbaa !1943
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.dk
  %.sink528 = phi i64 [ 40, %bb.dk ], [ 32, %.preheader ]
  %.sink = phi ptr [ %.1180, %bb.dk ], [ null, %.preheader ]
  %.sink526 = phi ptr [ %i.rt, %bb.dk ], [ %i.u, %.preheader ]
  %.1180.lcssa525.sink = phi ptr [ %i.u, %bb.dk ], [ %.1180, %.preheader ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.1180, i64 32
  %i.rz = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink528
  store ptr %.sink, ptr %i.rz, align 8, !tbaa !714
  %i.sa = getelementptr inbounds nuw i8, ptr %.sink526, i64 40
  store ptr %.1180.lcssa525.sink, ptr %i.sa, align 8, !tbaa !2575
  store ptr %i.u, ptr %i.ry, align 8, !tbaa !1943
  br label %sqlite3_mutex_leave.exit298.thread390.thread512

bb.dl:                                            ; preds = %bb.df, %bb.dg
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next460, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3_mutex_leave.exit298.thread390.thread512, label %bb.df, !llvm.loop !2932

.thread398:                                       ; preds = %sqlite3PagerReadFileheader.exit.thread363, %bb.da, %sqlite3MutexAlloc.exit294, %bb.cs
  %.6198388405 = phi i32 [ %i.oh, %bb.cs ], [ %.2.i.ph, %sqlite3PagerReadFileheader.exit.thread363 ], [ %i.py, %bb.da ], [ 7, %sqlite3MutexAlloc.exit294 ] ; 3 uses
  %i.sb = load ptr, ptr %i.db, align 8, !tbaa !73 ; 2 uses
  %.not248 = icmp eq ptr %i.sb, null
  br i1 %.not248, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.thread398
  call fastcc void @sqlite3PagerClose(ptr noundef nonnull %i.sb, ptr noundef null)
  br label %bb.dn

bb.dn:                                            ; preds = %.thread398, %bb.dm
  %i.sc = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i299 = icmp eq i32 %i.sc, 0
  br i1 %.not.i299, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sd = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i300 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i300, label %sqlite3_mutex_enter.exit.i301, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.se = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.se(ptr noundef nonnull %i.sd) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i301

sqlite3_mutex_enter.exit.i301:                    ; preds = %bb.dp, %bb.do
  %i.sf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.sg = call i32 %i.sf(ptr noundef nonnull %i.db) #59, !inline_history !269
  %i.sh = sext i32 %i.sg to i64
  %i.si = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.sj = sub nsw i64 %i.si, %i.sh
  store i64 %i.sj, ptr @sqlite3Stat, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@sqlite3InitOne:bb.a
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !593
  %i.ez = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !593
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.ae, label %sqlite3BtreeGetMeta.exit.1

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.dq)
  br label %sqlite3BtreeGetMeta.exit.1

sqlite3BtreeGetMeta.exit.1:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fb = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !67
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 17 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !592
  %.not.i.i113.2 = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i113.2, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %sqlite3BtreeGetMeta.exit.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 20 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !593
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !593
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 18
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !594
  %.not4.i.i.2 = icmp eq i8 %i.fk, 0
  br i1 %.not4.i.i.2, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.fb)
  %.pre174 = load i8, ptr %i.fe, align 1, !tbaa !592
  %i.fl = icmp eq i8 %.pre174, 0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %sqlite3BtreeGetMeta.exit.1
  %.not.i9.i.2 = phi i1 [ %i.fl, %bb.ag ], [ false, %bb.af ], [ true, %sqlite3BtreeGetMeta.exit.1 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !658
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !659 ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !227
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw i32 %i.fs, 24
  %i.fu = getelementptr i8, ptr %i.fp, i64 49
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !227
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 16
  %i.fy = or disjoint i32 %i.fx, %i.ft
  %i.fz = getelementptr i8, ptr %i.fp, i64 50
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !227
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 8
  %i.gd = or disjoint i32 %i.fy, %i.gc
  %i.ge = getelementptr i8, ptr %i.fp, i64 51
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !227
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gd, %i.gg            ; 4 uses
  br i1 %.not.i9.i.2, label %sqlite3BtreeGetMeta.exit.2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fb, i64 20 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !593
  %i.gk = add nsw i32 %i.gj, -1                   ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !593
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.aj, label %sqlite3BtreeGetMeta.exit.2

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.fb)
  br label %sqlite3BtreeGetMeta.exit.2

sqlite3BtreeGetMeta.exit.2:                       ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gm = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 17 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !592
  %.not.i.i113.3 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i113.3, label %sqlite3BtreeGetMeta.exit.3, label %bb.ak

bb.ak:                                            ; preds = %sqlite3BtreeGetMeta.exit.2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 20 ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !593 ; 2 uses
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !593
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 18
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !594
  %.not4.i.i.3 = icmp eq i8 %i.gt, 0
  br i1 %.not4.i.i.3, label %bb.al, label %.thread204

bb.al:                                            ; preds = %bb.ak
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.gm)
  %.pre175 = load i8, ptr %i.gn, align 1, !tbaa !592
  %i.gu = icmp eq i8 %.pre175, 0
  br i1 %i.gu, label %sqlite3BtreeGetMeta.exit.3, label %..thread204_crit_edge

..thread204_crit_edge:                            ; preds = %bb.al
  %.pre241 = load i32, ptr %i.gp, align 4, !tbaa !593
  %i.gv = add nsw i32 %.pre241, -1
  br label %.thread204

.thread204:                                       ; preds = %..thread204_crit_edge, %bb.ak
  %i.gw = phi i32 [ %i.gv, %..thread204_crit_edge ], [ %i.gq, %bb.ak ] ; 2 uses
  store i32 %i.gw, ptr %i.gp, align 4, !tbaa !593
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.am, label %sqlite3BtreeGetMeta.exit.3

bb.am:                                            ; preds = %.thread204
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.gm)
  br label %sqlite3BtreeGetMeta.exit.3

sqlite3BtreeGetMeta.exit.3:                       ; preds = %sqlite3BtreeGetMeta.exit.2, %bb.am, %.thread204, %bb.al
  %i.gy = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !67 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 17 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !592
  %.not.i.i113.4 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i113.4, label %.thread265, label %bb.an

.thread265:                                       ; preds = %sqlite3BtreeGetMeta.exit.3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !658
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !659 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 56
  %i.hi = getelementptr i8, ptr %i.hg, i64 59
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !227
  %i.hk = load <4 x i8>, ptr %i.hh, align 1, !tbaa !227
  %i.hl = zext i8 %i.hj to i32
  br label %sqlite3BtreeGetMeta.exit.4

bb.an:                                            ; preds = %sqlite3BtreeGetMeta.exit.3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 20 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !593
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !593
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 18
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !594
  %.not4.i.i.4 = icmp eq i8 %i.hq, 0
  br i1 %.not4.i.i.4, label %bb.ao, label %.thread267

.thread267:                                       ; preds = %bb.an
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !658
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !659 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 56
  %i.hw = getelementptr i8, ptr %i.hu, i64 59
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !227
  %i.hy = load <4 x i8>, ptr %i.hv, align 1, !tbaa !227
  %i.hz = zext i8 %i.hx to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.gy)
  %.pre176 = load i8, ptr %i.hb, align 1, !tbaa !592
  %i.ia = icmp eq i8 %.pre176, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !658
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !659 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 56
  %i.ig = getelementptr i8, ptr %i.ie, i64 59
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !227
  %i.ii = load <4 x i8>, ptr %i.if, align 1, !tbaa !227 ; 2 uses
  %i.ij = zext i8 %i.ih to i32                    ; 2 uses
  br i1 %i.ia, label %sqlite3BtreeGetMeta.exit.4, label %bb.ap

bb.ap:                                            ; preds = %.thread267, %bb.ao
  %i.ik = phi i32 [ %i.hz, %.thread267 ], [ %i.ij, %bb.ao ] ; 2 uses
  %i.il = phi <4 x i8> [ %i.hy, %.thread267 ], [ %i.ii, %bb.ao ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gy, i64 20 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !593
  %i.io = add nsw i32 %i.in, -1                   ; 2 uses
  store i32 %i.io, ptr %i.im, align 4, !tbaa !593
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.aq, label %sqlite3BtreeGetMeta.exit.4

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.gy)
  br label %sqlite3BtreeGetMeta.exit.4

sqlite3BtreeGetMeta.exit.4:                       ; preds = %.thread265, %bb.aq, %bb.ap, %bb.ao
  %i.iq = phi i32 [ %i.hl, %.thread265 ], [ %i.ik, %bb.aq ], [ %i.ik, %bb.ap ], [ %i.ij, %bb.ao ] ; 2 uses
  %i.ir = phi <4 x i8> [ %i.hk, %.thread265 ], [ %i.il, %bb.aq ], [ %i.il, %bb.ap ], [ %i.ii, %bb.ao ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !545
  %i.iu = and i64 %i.it, 33554432
  %.not104 = icmp eq i64 %i.iu, 0
  %i.iv = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !101 ; 6 uses
  br i1 %.not104, label %bb.ar, label %.thread206

.thread206:                                       ; preds = %sqlite3BtreeGetMeta.exit.4
  store i32 0, ptr %i.iw, align 8, !tbaa !941
  br label %sqlite3SetTextEncoding.exit

bb.ar:                                            ; preds = %sqlite3BtreeGetMeta.exit.4
  store i32 %i.dl, ptr %i.iw, align 8, !tbaa !941
  %5 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.ir)
  %i.ix = icmp eq i8 %5, 0
  br i1 %i.ix, label %sqlite3SetTextEncoding.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iy = icmp eq i32 %1, 0
  br i1 %i.iy, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !695
  %i.ja = and i32 %i.iz, 64
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.jc = extractelement <4 x i8> %i.ir, i64 3
  %i.jd = and i8 %i.jc, 3
  %i.je = and i32 %i.iq, 3
  %i.jf = icmp eq i32 %i.je, 0
  %spec.store.select = select i1 %i.jf, i8 1, i8 %i.jd ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %spec.store.select, ptr %i.jg, align 4, !tbaa !844
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !959 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !960
  %i.jl = urem i32 -1458796171, %i.jk
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jm ; 2 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.021.in.i.i.i.i.i = phi ptr [ %i.jn, %bb.av ], [ %i.jo, %bb.aw ]
  %.pn.i.i.i.i.i = phi ptr [ %i.jn, %bb.av ], [ %i.jh, %bb.aw ]
  %.021.i.i.i.i.i = load i32, ptr %.021.in.i.i.i.i.i, align 4, !tbaa !5 ; 2 uses
  %.not2631.i.i.i.i.i = icmp eq i32 %.021.i.i.i.i.i, 0
  br i1 %.not2631.i.i.i.i.i, label %sqlite3HashFind.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ax
  %.020.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %sqlite3StrICmp.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.133.i.in.i.i.i.i = phi ptr [ %.133.i.i.i.i.i, %sqlite3StrICmp.exit.i.i.i.i.i ], [ %.020.in.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ]
  %.12232.i.i.i.i.i = phi i32 [ %i.kg, %sqlite3StrICmp.exit.i.i.i.i.i ], [ %.021.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ]
  %.133.i.i.i.i.i = load ptr, ptr %.133.i.in.i.i.i.i, align 8, !tbaa !114 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i, i64 32
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !961
  %i.jr = icmp eq i32 %i.jq, -1458796171
  br i1 %i.jr, label %bb.ay, label %sqlite3StrICmp.exit.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !962
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %bb.ay
  %.013.i.i.i.i.i.i = phi ptr [ @.str.136, %bb.ay ], [ %i.kf, %bb.bc ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.jt, %bb.ay ], [ %i.ke, %bb.bc ] ; 2 uses
  %i.ju = load i8, ptr %.0.i.i.i.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.jv = load i8, ptr %.013.i.i.i.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.jw = icmp eq i8 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jx = icmp eq i8 %i.ju, 0
  br i1 %i.jx, label %sqlite3HashFind.exit.i.i.i, label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.jy = zext i8 %i.ju to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !227
  %i.kb = zext i8 %i.jv to i64
  %i.kc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !227
  %.not.i27.i.i.i.i.i = icmp eq i8 %i.ka, %i.kd
  br i1 %.not.i27.i.i.i.i.i, label %bb.bc, label %sqlite3StrICmp.exit.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 1
  br label %bb.az

sqlite3StrICmp.exit.i.i.i.i.i:                    ; preds = %bb.bb, %.lr.ph.i.i.i.i.i
  %i.kg = add i32 %.12232.i.i.i.i.i, -1           ; 2 uses
  %.not26.i.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not26.i.i.i.i.i, label %sqlite3HashFind.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !963

sqlite3HashFind.exit.i.i.i:                       ; preds = %sqlite3StrICmp.exit.i.i.i.i.i, %bb.ba, %bb.ax
  %.0.i.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.ax ], [ %.133.i.i.i.i.i, %bb.ba ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i.i ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !115 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  %i.kk = zext nneg i8 %spec.store.select to i64
  %i.kl = getelementptr [40 x i8], ptr %i.ki, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 -40
  %.0.i.i114 = select i1 %i.kj, ptr null, ptr %i.km
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i114, ptr %i.kn, align 8, !tbaa !1299
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04.i.i = load ptr, ptr %i.ko, align 8, !tbaa !128 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %sqlite3SetTextEncoding.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sqlite3HashFind.exit.i.i.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %.0.i5.i, %.lr.ph.i.i ], [ %.04.i.i, %sqlite3HashFind.exit.i.i.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 200 ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 8
  %i.kr = and i16 %i.kq, -4
  %i.ks = or disjoint i16 %i.kr, 2
  store i16 %i.ks, ptr %i.kp, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %.0.i5.i = load ptr, ptr %i.kt, align 8, !tbaa !128 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.0.i5.i, null
  br i1 %.not.i.i115, label %sqlite3SetTextEncoding.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1020

bb.bd:                                            ; preds = %bb.at, %bb.as
  %i.ku = and i32 %i.iq, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !844
  %i.kx = zext i8 %i.kw to i32
  %.not106 = icmp eq i32 %i.ku, %i.kx
  br i1 %.not106, label %sqlite3SetTextEncoding.exit, label %sqlite3DbMallocRaw.exit.i.i117

sqlite3DbMallocRaw.exit.i.i117:                   ; preds = %bb.bd
  %i.ky = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 68), !inline_history !608 ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i119, label %sqlite3DbStrDup.exit.i120, label %bb.be

bb.be:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.ky, ptr noundef nonnull readonly align 1 dereferenceable(68) @.str.390, i64 68, i1 false)
  br label %sqlite3DbStrDup.exit.i120

sqlite3DbStrDup.exit.i120:                        ; preds = %bb.be, %sqlite3DbMallocRaw.exit.i.i117
  %i.kz = load ptr, ptr %2, align 8, !tbaa !251   ; 2 uses
  %.not.i6.i122 = icmp eq ptr %i.kz, null
  br i1 %.not.i6.i122, label %sqlite3SetString.exit123, label %bb.bf

bb.bf:                                            ; preds = %sqlite3DbStrDup.exit.i120
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %i.kz)
  br label %sqlite3SetString.exit123

sqlite3SetString.exit123:                         ; preds = %sqlite3DbStrDup.exit.i120, %bb.bf
  store ptr %i.ky, ptr %2, align 8, !tbaa !251
  br label %bb.cs

sqlite3SetTextEncoding.exit.loopexit:             ; preds = %.lr.ph.i.i
  %.pre177 = load ptr, ptr %i.iv, align 8, !tbaa !101
  br label %sqlite3SetTextEncoding.exit

sqlite3SetTextEncoding.exit:                      ; preds = %.thread206, %sqlite3SetTextEncoding.exit.loopexit, %sqlite3HashFind.exit.i.i.i, %bb.bd, %bb.ar
  %.sroa.7.0213 = phi i32 [ %i.gh, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.gh, %sqlite3HashFind.exit.i.i.i ], [ %i.gh, %bb.bd ], [ %i.gh, %bb.ar ], [ 0, %.thread206 ] ; 3 uses
  %.sroa.5.0212 = phi i32 [ %i.ew, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.ew, %sqlite3HashFind.exit.i.i.i ], [ %i.ew, %bb.bd ], [ %i.ew, %bb.ar ], [ 0, %.thread206 ] ; 3 uses
  %i.la = phi ptr [ %.pre177, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.iw, %sqlite3HashFind.exit.i.i.i ], [ %i.iw, %bb.bd ], [ %i.iw, %bb.ar ], [ %i.iw, %.thread206 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.lc = load i8, ptr %i.lb, align 4, !tbaa !844
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 113
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !954
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 116 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !2942
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bg, label %sqlite3BtreeSetCacheSize.exit

bb.bg:                                            ; preds = %sqlite3SetTextEncoding.exit
  %spec.select.i = call i32 @llvm.ssub.sat.i32(i32 0, i32 %.sroa.7.0213)
  %i.lh = icmp slt i32 %.sroa.7.0213, 0
  %.0.i124 = select i1 %i.lh, i32 %spec.select.i, i32 %.sroa.7.0213 ; 3 uses
  %i.li = icmp eq i32 %.0.i124, 0
  %spec.store.select1 = select i1 %i.li, i32 -2000, i32 %.0.i124 ; 4 uses
  store i32 %spec.store.select1, ptr %i.le, align 4, !tbaa !2942
  %i.lj = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 17 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !592
  %.not.i.i125 = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i125, label %sqlite3BtreeEnter.exit.i127, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 20 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !593
  %i.lq = add nsw i32 %i.lp, 1
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !593
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 18
  %i.ls = load i8, ptr %i.lr, align 2, !tbaa !594
  %.not4.i.i126 = icmp eq i8 %i.ls, 0
  br i1 %.not4.i.i126, label %bb.bi, label %sqlite3BtreeEnter.exit.i127

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.lj)
  br label %sqlite3BtreeEnter.exit.i127

sqlite3BtreeEnter.exit.i127:                      ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.lt = load ptr, ptr %i.ll, align 8, !tbaa !73
end_hunk_4
begin_hunk_5_@rbuVfsClose:bb.a
rbuMainlistRemove.exit:                           ; preds = %bb.y, %bb.z
  tail call fastcc void @rbuUnlockShm(ptr noundef nonnull %0)
  %i.ci = load i32, ptr %i.bm, align 8, !tbaa !1520
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %rbuMainlistRemove.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2256 ; 2 uses
  %.not25 = icmp eq ptr %i.cl, null
  br i1 %.not25, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr %i.bk, align 8, !tbaa !1424
  %i.cn = tail call i32 %i.cl(ptr noundef %i.cm, i32 noundef 0) #59 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %sqlite3_free.exit35
  %i.co = and i32 %i.bi, 8
  %.not23 = icmp eq i32 %i.co, 0
  br i1 %.not23, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1519 ; 2 uses
  %.not24 = icmp eq ptr %i.cq, null
  br i1 %.not24, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !8266
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 384 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1537
  %i.cv = sub nsw i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !1537
  store i64 0, ptr %i.cr, align 8, !tbaa !8266
  br label %bb.af

bb.af:                                            ; preds = %rbuMainlistRemove.exit, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1424 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !473
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2028
  %i.db = tail call i32 %i.da(ptr noundef nonnull %i.cx) #59
  ret i32 %i.db
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsRead(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1519 ; 14 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1358
  switch i32 %i.c, label %.critedge [
    i32 3, label %bb.c
    i32 1, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8267
  %.not.i = icmp eq i32 %i.e, 11
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 5, ptr %i.f, align 8, !tbaa !1367
  br label %rbuCaptureWalRead.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 %2, ptr %i.g, align 8, !tbaa !1432
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1418 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 348 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8268
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not31.i = icmp eq i32 %i.i, 0
  %i.m = shl nsw i32 %i.i, 1
  %spec.select.i = select i1 %.not31.i, i32 128, i32 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1419
  %i.p = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %rbuCaptureWalRead.exit

sqlite3_realloc64.exit.i:                         ; preds = %bb.f
  %i.q = sext i32 %spec.select.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.o, i64 noundef %i.r), !inline_history !1057 ; 2 uses
  %.not32.i = icmp eq ptr %i.s, null
  br i1 %.not32.i, label %rbuCaptureWalRead.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.s, ptr %i.n, align 8, !tbaa !1419
  store i32 %spec.select.i, ptr %i.j, align 4, !tbaa !8268
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = add nsw i64 %3, -32
  %i.u = add nsw i32 %2, 24
  %i.v = sext i32 %i.u to i64
  %i.w = sdiv i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 1                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1429
  %i.ab = icmp ult i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.y, ptr %i.z, align 8, !tbaa !1429
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1419
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !1418 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !1431
  store i32 0, ptr %i.ag, align 4, !tbaa !1420
  %i.ai = add nsw i32 %i.ae, 1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !1418
  br label %rbuCaptureWalRead.exit

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1514
  %i.al = and i32 %i.ak, 524288
  %.not65 = icmp eq i32 %i.al, 0
  br i1 %.not65, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1482
  %.not66 = icmp slt i64 %3, %i.an
  br i1 %.not66, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ao, i1 false)
  br label %bb.t

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1424 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !473
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1433
  %i.au = tail call i32 %i.at(ptr noundef nonnull %i.aq, ptr noundef %1, i32 noundef %2, i64 noundef %3) #59 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1365
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq i32 %i.au, 522
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = icmp eq i64 %3, 0
  %or.cond3 = and i1 %i.az, %or.cond
  br i1 %or.cond3, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1514
  %i.bc = and i32 %i.bb, 256
  %.not67 = icmp eq i32 %i.bc, 0
  br i1 %.not67, label %rbuCaptureWalRead.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1367
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %rbuCaptureWalRead.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8242 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !473
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1433
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.bh, ptr noundef %1, i32 noundef %2, i64 noundef 0) #59 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %rbuCaptureWalRead.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 55
  %4 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !227
  %5 = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %4)
  %i.br = icmp ne i8 %5, 0
  store i8 0, ptr %i.bn, align 1, !tbaa !227
  store i8 0, ptr %i.bo, align 1, !tbaa !227
  store i8 0, ptr %i.bp, align 1, !tbaa !227
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !227
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 0, ptr %i.bt, align 1
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bu, align 1, !tbaa !227
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !8242
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1481
  %i.bz = add i32 %i.by, 1                        ; 4 uses
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = trunc nuw i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bv, align 1, !tbaa !227
  %i.cc = lshr i32 %i.bz, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !227
  %i.cf = lshr i32 %i.bz, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !227
  %i.ci = trunc i32 %i.bz to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !227
  %i.ck = icmp sgt i32 %2, 100
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.cm = add nsw i32 %2, -100
  %i.cn = zext nneg i32 %i.cm to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cl, i8 0, i64 %i.cn, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.cp = lshr i32 %2, 8
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !227
  %i.cr = trunc i32 %2 to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !227
  store i8 13, ptr %i.cl, align 1, !tbaa !227
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.critedge, %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ %i.au, %.critedge ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.au, %bb.n ] ; 2 uses
  %i.ct = icmp eq i32 %.0, 0
  %i.cu = icmp eq i64 %3, 0
  %or.cond5 = and i1 %i.cu, %i.ct
  br i1 %or.cond5, label %bb.u, label %rbuCaptureWalRead.exit

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1514
  %i.cx = and i32 %i.cw, 256
  %.not69 = icmp eq i32 %i.cx, 0
  br i1 %.not69, label %rbuCaptureWalRead.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !227
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw i32 %i.da, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !227
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !227
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = or disjoint i32 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !227
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !1481
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !227
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ds, ptr %i.dt, align 8, !tbaa !8269
  br label %rbuCaptureWalRead.exit

rbuCaptureWalRead.exit:                           ; preds = %bb.q, %bb.o, %bb.p, %bb.j, %sqlite3_realloc64.exit.i, %bb.f, %bb.d, %bb.t, %bb.u, %bb.v
  %.1 = phi i32 [ %.0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.u ], [ 795, %bb.d ], [ 0, %bb.j ], [ 7, %sqlite3_realloc64.exit.i ], [ 7, %bb.f ], [ %i.bl, %bb.q ], [ 522, %bb.o ], [ 522, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1519 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1358
  switch i32 %i.c, label %._crit_edge [
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1514
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1432
  %i.f = sext i32 %i.e to i64
  %i.g = sdiv i64 %3, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1419
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1418
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  store i32 %i.i, ptr %i.p, align 4, !tbaa !1420
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1514 ; 3 uses
  %i.s = and i32 %i.r, 524288
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1482
  %.not48 = icmp slt i64 %3, %i.u
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %2 to i64
  %i.w = add nsw i64 %3, %i.v
  store i64 %i.w, ptr %i.t, align 8, !tbaa !1482
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  %i.y = and i32 %i.x, 8
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = sext i32 %2 to i64
  %i.aa = add nsw i64 %3, %i.z                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !8266 ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nsw i64 %i.aa, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1537
  %i.ah = add nsw i64 %i.ag, %i.ae                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !1537
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !8266
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1536 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  %i.ak = icmp sle i64 %i.ah, %i.aj
  %or.cond.i.not = select i1 %.not.i, i1 true, i1 %i.ak
  br i1 %or.cond.i.not, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.a, %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1424 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !473
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !681
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.am, ptr noundef %1, i32 noundef %2, i64 noundef %3) #59 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq i64 %3, 0
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1514
  %i.av = and i32 %i.au, 256
  %.not51 = icmp eq i32 %i.av, 0
  br i1 %.not51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
end_hunk_5
begin_hunk_6_@sessionAppendRecordMerge:bb.a
  %i.bv = shl nuw nsw i32 %i.bu, 7
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %sqlite3GetVarint32.exit.i.i39

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %.03047, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !227 ; 2 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = zext nneg i8 %i.by to i32
  %i.cb = and i8 %i.bm, 127
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 14
  %i.ce = shl nuw nsw i32 %i.br, 7
  %i.cf = and i32 %i.ce, 16256
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = or disjoint i32 %i.cg, %i.ca
  br label %sqlite3GetVarint32.exit.i.i39

bb.w:                                             ; preds = %bb.u
  %i.ci = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.bl, ptr noundef nonnull %i.a)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.not.i.i.i36 = icmp ult i64 %i.cj, 4294967296
  %i.ck = trunc nuw i64 %i.cj to i32
  %storemerge.i.i.i37 = select i1 %.not.i.i.i36, i32 %i.ck, i32 -1
  %narrow.i38 = add nuw nsw i8 %i.ci, 1
  %i.cl = zext nneg i8 %narrow.i38 to i32
  br label %sqlite3GetVarint32.exit.i.i39

sqlite3GetVarint32.exit.i.i39:                    ; preds = %bb.w, %bb.v, %bb.t
  %storemerge.sink.i.i.i40 = phi i32 [ %storemerge.i.i.i37, %bb.w ], [ %i.ch, %bb.v ], [ %i.bw, %bb.t ]
  %.0.i.i.i41 = phi i32 [ %i.cl, %bb.w ], [ 4, %bb.v ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sessionVarintGet.exit.i42

sessionVarintGet.exit.i42:                        ; preds = %sqlite3GetVarint32.exit.i.i39, %bb.r
  %.012.i43 = phi i32 [ %i.bo, %bb.r ], [ %storemerge.sink.i.i.i40, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cm = phi i32 [ 2, %bb.r ], [ %.0.i.i.i41, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cn = add nsw i32 %i.cm, %.012.i43
  %i.co = sext i32 %i.cn to i64
  br label %sessionSerialLen.exit44

sessionSerialLen.exit44:                          ; preds = %sessionSerialLen.exit, %sessionSerialLen.exit, %sessionSerialLen.exit, %bb.p, %sessionVarintGet.exit.i42
  %.0.i34 = phi i64 [ %i.co, %sessionVarintGet.exit.i42 ], [ 1, %sessionSerialLen.exit ], [ 9, %bb.p ], [ 1, %sessionSerialLen.exit ], [ 1, %sessionSerialLen.exit ] ; 3 uses
  %.off = add i8 %i.ad, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03146, ptr nonnull align 1 %.03047, i64 %.0.i34, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03146, ptr nonnull align 1 %.050, i64 %.0.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi i64 [ %.0.i34, %bb.x ], [ %.0.i, %bb.y ]
  %.1 = getelementptr inbounds i8, ptr %.03146, i64 %.pn ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.050, i64 %.0.i
  %i.cq = getelementptr inbounds i8, ptr %.03047, i64 %.0.i34
  %i.cr = add nuw nsw i32 %.03245, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8352

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !1625
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sessionBufferGrow.exit.thread65
  %i.cs = phi ptr [ %i.y, %sessionBufferGrow.exit.thread65 ], [ %.pre53, %._crit_edge.loopexit ]
  %.031.lcssa = phi ptr [ %i.ab, %sessionBufferGrow.exit.thread65 ], [ %.1, %._crit_edge.loopexit ]
  %i.ct = ptrtoint ptr %.031.lcssa to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !1616
  br label %sessionBufferGrow.exit.thread

sessionBufferGrow.exit.thread:                    ; preds = %sqlite3_realloc64.exit.thread.i, %.critedge.i, %bb.a, %._crit_edge, %sessionBufferGrow.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #47

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { nounwind }
attributes #60 = { nounwind willreturn memory(read) }
attributes #61 = { nounwind willreturn memory(none) }
attributes #62 = { "function-inline-cost-multiplier"="2" }
attributes #63 = { nounwind allocsize(0) }
attributes #64 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 128}
!10 = !{!"Sqlite3Config", !6, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !11, i64 32, !13, i64 96, !14, i64 168, !12, i64 272, !6, i64 280, !6, i64 284, !6, i64 288, !15, i64 296, !15, i64 304, !12, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !16, i64 368, !12, i64 376, !12, i64 384, !15, i64 392, !12, i64 400, !6, i64 408, !12, i64 416, !6, i64 424, !6, i64 428, !6, i64 432}
!11 = !{!"sqlite3_mem_methods", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"sqlite3_mutex_methods", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!14 = !{!"sqlite3_pcache_methods2", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!15 = !{!"long long", !7, i64 0}
!16 = !{!"p1 _ZTS13sqlite3_mutex", !12, i64 0}
!17 = !{ptr @sqlite3_mutex_enter}
!18 = !{!15, !15, i64 0}
!19 = !{!10, !12, i64 144}
!20 = !{ptr @sqlite3_mutex_leave}
!21 = !{ptr @sqlite3_status64, ptr @sqlite3_mutex_enter}
!22 = !{ptr @sqlite3_status64, ptr @sqlite3_mutex_leave}
!23 = !{!24, !16, i64 24}
!24 = !{!"sqlite3", !25, i64 0, !26, i64 8, !27, i64 16, !16, i64 24, !28, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !7, i64 100, !7, i64 101, !7, i64 102, !7, i64 103, !7, i64 104, !7, i64 105, !7, i64 106, !7, i64 107, !7, i64 108, !7, i64 109, !7, i64 110, !7, i64 111, !7, i64 112, !7, i64 113, !7, i64 114, !6, i64 116, !15, i64 120, !15, i64 128, !7, i64 136, !6, i64 188, !29, i64 192, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !31, i64 232, !7, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !32, i64 344, !12, i64 352, !12, i64 360, !33, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !34, i64 416, !7, i64 424, !35, i64 432, !12, i64 528, !12, i64 536, !12, i64 544, !12, i64 552, !6, i64 560, !6, i64 564, !38, i64 568, !41, i64 592, !42, i64 600, !43, i64 608, !38, i64 616, !38, i64 640, !44, i64 664, !7, i64 688, !45, i64 752, !6, i64 760, !6, i64 764, !6, i64 768, !6, i64 772, !15, i64 776, !15, i64 784, !46, i64 792, !47, i64 800, !15, i64 808}
!25 = !{!"p1 _ZTS11sqlite3_vfs", !12, i64 0}
!26 = !{!"p1 _ZTS4Vdbe", !12, i64 0}
!27 = !{!"p1 _ZTS7CollSeq", !12, i64 0}
!28 = !{!"p1 _ZTS2Db", !12, i64 0}
!29 = !{!"sqlite3InitInfo", !6, i64 0, !7, i64 4, !7, i64 5, !6, i64 6, !6, i64 6, !6, i64 6, !30, i64 8}
!30 = !{!"p2 omnipotent char", !31, i64 0}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!"p1 _ZTS5Parse", !12, i64 0}
!33 = !{!"p1 _ZTS9PreUpdate", !12, i64 0}
!34 = !{!"p1 _ZTS13sqlite3_value", !12, i64 0}
!35 = !{!"Lookaside", !6, i64 0, !36, i64 4, !36, i64 6, !7, i64 8, !6, i64 12, !7, i64 16, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!36 = !{!"short", !7, i64 0}
!37 = !{!"p1 _ZTS13LookasideSlot", !12, i64 0}
!38 = !{!"Hash", !6, i64 0, !6, i64 4, !39, i64 8, !40, i64 16}
!39 = !{!"p1 _ZTS8HashElem", !12, i64 0}
!40 = !{!"p1 _ZTS3_ht", !12, i64 0}
!41 = !{!"p1 _ZTS7VtabCtx", !12, i64 0}
!42 = !{!"p2 _ZTS6VTable", !31, i64 0}
!43 = !{!"p1 _ZTS6VTable", !12, i64 0}
!44 = !{!"BusyHandler", !12, i64 0, !12, i64 8, !6, i64 16}
!45 = !{!"p1 _ZTS9Savepoint", !12, i64 0}
!46 = !{!"p1 int", !12, i64 0}
!47 = !{!"p1 _ZTS12DbClientData", !12, i64 0}
!48 = !{!24, !37, i64 464}
!49 = !{!50, !37, i64 0}
!50 = !{!"LookasideSlot", !37, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!24, !37, i64 472}
!54 = !{!24, !37, i64 480}
!55 = !{!24, !37, i64 488}
!56 = !{!24, !6, i64 444}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = !{!24, !7, i64 111}
!60 = !{!24, !6, i64 40}
!61 = !{!24, !28, i64 32}
!62 = !{!63, !65, i64 8}
!63 = !{!"Db", !64, i64 0, !65, i64 8, !7, i64 16, !7, i64 17, !66, i64 24}
!64 = !{!"p1 omnipotent char", !12, i64 0}
!65 = !{!"p1 _ZTS5Btree", !12, i64 0}
!66 = !{!"p1 _ZTS6Schema", !12, i64 0}
!67 = !{!68, !70, i64 8}
!68 = !{!"Btree", !69, i64 0, !70, i64 8, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !6, i64 20, !6, i64 24, !6, i64 28, !65, i64 32, !65, i64 40, !71, i64 48}
!69 = !{!"p1 _ZTS7sqlite3", !12, i64 0}
!70 = !{!"p1 _ZTS8BtShared", !12, i64 0}
!71 = !{!"BtLock", !65, i64 0, !6, i64 8, !7, i64 12, !72, i64 16}
!72 = !{!"p1 _ZTS6BtLock", !12, i64 0}
!73 = !{!74, !75, i64 0}
!74 = !{!"BtShared", !75, i64 0, !69, i64 8, !76, i64 16, !77, i64 24, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !36, i64 40, !36, i64 42, !36, i64 44, !36, i64 46, !36, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !12, i64 72, !12, i64 80, !16, i64 88, !78, i64 96, !6, i64 104, !70, i64 112, !72, i64 120, !65, i64 128, !64, i64 136, !6, i64 144}
!75 = !{!"p1 _ZTS5Pager", !12, i64 0}
!76 = !{!"p1 _ZTS8BtCursor", !12, i64 0}
!77 = !{!"p1 _ZTS7MemPage", !12, i64 0}
!78 = !{!"p1 _ZTS6Bitvec", !12, i64 0}
!79 = !{!80, !15, i64 200}
!80 = !{!"Pager", !25, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !78, i64 64, !81, i64 72, !81, i64 80, !81, i64 88, !15, i64 96, !15, i64 104, !82, i64 112, !83, i64 120, !6, i64 128, !6, i64 132, !7, i64 136, !6, i64 152, !15, i64 160, !84, i64 168, !36, i64 176, !36, i64 178, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !15, i64 200, !15, i64 208, !64, i64 216, !64, i64 224, !12, i64 232, !12, i64 240, !7, i64 248, !12, i64 264, !12, i64 272, !64, i64 280, !85, i64 288, !86, i64 296, !64, i64 304}
!81 = !{!"p1 _ZTS12sqlite3_file", !12, i64 0}
!82 = !{!"p1 _ZTS14sqlite3_backup", !12, i64 0}
!83 = !{!"p1 _ZTS14PagerSavepoint", !12, i64 0}
!84 = !{!"p1 _ZTS5PgHdr", !12, i64 0}
!85 = !{!"p1 _ZTS6PCache", !12, i64 0}
!86 = !{!"p1 _ZTS3Wal", !12, i64 0}
!87 = !{!80, !36, i64 176}
!88 = !{!80, !85, i64 288}
!89 = !{!90, !91, i64 72}
!90 = !{!"PCache", !84, i64 0, !84, i64 8, !84, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48, !7, i64 49, !12, i64 56, !12, i64 64, !91, i64 72}
!91 = !{!"p1 _ZTS14sqlite3_pcache", !12, i64 0}
!92 = !{!10, !12, i64 216}
!93 = distinct !{null, null}
!94 = !{!10, !12, i64 56}
!95 = distinct !{null, null}
!96 = !{!74, !6, i64 104}
!97 = distinct !{!97, !52}
!98 = !{!24, !46, i64 792}
!99 = !{!24, !12, i64 504}
!100 = !{!24, !12, i64 512}
!101 = !{!63, !66, i64 24}
!102 = !{!10, !12, i64 64}
!103 = !{!104, !6, i64 12}
!104 = !{!"Schema", !6, i64 0, !6, i64 4, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !105, i64 104, !7, i64 112, !7, i64 113, !36, i64 114, !6, i64 116}
!105 = !{!"p1 _ZTS5Table", !12, i64 0}
!106 = !{!104, !6, i64 60}
!107 = !{!104, !6, i64 36}
!108 = !{!104, !6, i64 84}
!109 = !{!104, !40, i64 24}
end_hunk_6
