inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@btreeBeginTrans:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !656
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = and i16 %i.ab, 128
  %.not107 = icmp eq i16 %i.ag, 0
  %or.cond176 = and i1 %.not107, %i.af
  br i1 %or.cond176, label %bb.l, label %bb.k

.thread:                                          ; preds = %bb.i
  %i.ah = and i16 %i.ab, 128
  %.not107134 = icmp eq i16 %i.ah, 0
  br i1 %.not107134, label %.thread136, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1950
  br label %.loopexit179

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp sgt i32 %1, 1
  br i1 %i.ak, label %bb.m, label %.thread136

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.091203 = load ptr, ptr %i.al, align 8, !tbaa !1951 ; 2 uses
  %.not108204 = icmp eq ptr %.091203, null
  br i1 %.not108204, label %.thread136, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.091205, i64 16
  %.091 = load ptr, ptr %i.am, align 8, !tbaa !1951 ; 2 uses
  %.not108 = icmp eq ptr %.091, null
  br i1 %.not108, label %.thread136, label %.lr.ph, !llvm.loop !1952

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.091205 = phi ptr [ %.091, %bb.n ], [ %.091203, %bb.m ] ; 2 uses
  %i.an = load ptr, ptr %.091205, align 8, !tbaa !1953 ; 2 uses
  %.not109 = icmp eq ptr %i.an, %0
  br i1 %.not109, label %bb.n, label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph, %bb.k
  %.1.in = phi ptr [ %i.aj, %bb.k ], [ %i.an, %.lr.ph ]
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !663
  %.not110 = icmp eq ptr %.1, null
  br i1 %.not110, label %.thread136, label %sqlite3PagerOpenSavepoint.exit

.thread136:                                       ; preds = %bb.n, %bb.m, %.thread, %bb.l, %.loopexit179
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !69  ; 3 uses
  %i.ap = load i8, ptr %i.f, align 1, !tbaa !594
  %.not.i122 = icmp eq i8 %i.ap, 0
  br i1 %.not.i122, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1950
  %.not18.i = icmp eq ptr %i.ar, %0
  br i1 %.not18.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = load i16, ptr %i.as, align 8, !tbaa !719
  %i.au = and i16 %i.at, 64
  %.not19.i = icmp eq i16 %i.au, 0
  br i1 %.not19.i, label %bb.q, label %sqlite3PagerOpenSavepoint.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %.023.i = load ptr, ptr %i.av, align 8, !tbaa !1951 ; 2 uses
  %.not2024.i = icmp eq ptr %.023.i, null
  br i1 %.not2024.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %.025.i = phi ptr [ %.0.i, %bb.t ], [ %.023.i, %bb.q ] ; 4 uses
  %i.aw = load ptr, ptr %.025.i, align 8, !tbaa !1953
  %.not21.i = icmp eq ptr %i.aw, %0
  br i1 %.not21.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1954
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.025.i, i64 12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !1955
  %.not22.i = icmp eq i8 %i.bb, 1
  br i1 %.not22.i, label %bb.t, label %sqlite3PagerOpenSavepoint.exit

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.i, i64 16
  %.0.i = load ptr, ptr %i.bc, align 8, !tbaa !1951 ; 2 uses
  %.not20.i = icmp eq ptr %.0.i, null
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1956

.loopexit:                                        ; preds = %bb.t, %.thread136, %bb.q
  %i.bd = and i16 %i.ab, -17
  store i16 %i.bd, ptr %i.aa, align 8, !tbaa !719
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !670
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.bh = or i16 %i.ab, 16
  store i16 %i.bh, ptr %i.aa, align 8, !tbaa !719
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 46
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  %i.bt = icmp slt i32 %1, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 21 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 17 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  br label %bb.w

bb.w:                                             ; preds = %btreeInvokeBusyHandler.exit, %bb.v
  %.194 = phi i32 [ 0, %bb.v ], [ %.4155, %btreeInvokeBusyHandler.exit ]
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !660
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.lr.ph206, label %.critedge

lockBtree.exit.thread:                            ; preds = %.thread136.i, %lockBtree.exit
  %.pr249 = load ptr, ptr %i.bi, align 8, !tbaa !660
  %i.cm = icmp eq ptr %.pr249, null
  br i1 %i.cm, label %.lr.ph206, label %.critedge, !llvm.loop !1957

.lr.ph206:                                        ; preds = %bb.w, %lockBtree.exit.thread
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.co = call fastcc i32 @sqlite3PagerSharedLock(ptr noundef %i.cn), !inline_history !1958 ; 2 uses
  %.not.i123 = icmp eq i32 %i.co, 0
  br i1 %.not.i123, label %bb.x, label %.thread152thread-pre-split

bb.x:                                             ; preds = %.lr.ph206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !75  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 272
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !516
  %i.cs = call i32 %i.cr(ptr noundef %i.cp, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 256) 0) #59, !inline_history !1959 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i, label %bb.y, label %btreeGetPage.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !515 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val13.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !690 ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !763
  %.not.i.i.i = icmp eq i32 %i.cw, 1
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.z

._crit_edge.i:                                    ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 80
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !661
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !518 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 80
  store ptr %.val.i.i.i, ptr %i.cy, align 8, !tbaa !661
  %i.cz = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 112
  store ptr %i.ct, ptr %i.cz, align 8, !tbaa !692
  %i.da = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 72
  store ptr %i.d, ptr %i.da, align 8, !tbaa !764
  store i32 1, ptr %i.cv, align 4, !tbaa !763
  %i.db = getelementptr inbounds nuw i8, ptr %.val13.i.i.i, i64 9
  store i8 100, ptr %i.db, align 1, !tbaa !765
  br label %bb.aa

btreeGetPage.exit.i:                              ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.thread152thread-pre-split

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %i.dc = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.val.i.i.i, %bb.z ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.de = load i32, ptr %i.dd, align 1            ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !75  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  %.val.i = load i32, ptr %i.dg, align 8, !tbaa !678 ; 3 uses
  %i.dh = icmp eq i32 %i.de, 0
  br i1 %i.dh, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 92
  %i.dl = load i32, ptr %i.dj, align 1
  %i.dm = load i32, ptr %i.dk, align 1
  %i.dn = icmp ne i32 %i.dl, %i.dm
  %i.do = zext i1 %i.dn to i32
  %.not90.i = icmp eq i32 %i.do, 0
  br i1 %.not90.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.077.i = phi i32 [ %.val.i, %bb.ac ], [ %i.di, %bb.ab ] ; 3 uses
  %i.dp = load ptr, ptr %i.bj, align 8, !tbaa !1944
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !547
  %i.ds = and i64 %i.dr, 33554432
  %.not91.i = icmp ne i64 %i.ds, 0
  %.not92139.i = icmp eq i32 %.077.i, 0
  %.not92.i = select i1 %.not91.i, i1 true, i1 %.not92139.i
  br i1 %.not92.i, label %._crit_edge141.i, label %bb.ae

._crit_edge141.i:                                 ; preds = %bb.ad
  %.pre143.i = load i32, ptr %i.bl, align 8, !tbaa !751
  br label %lockBtree.exit.thread.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i128, ptr %i.dc, align 1
  %i.du = icmp ne i128 %i.dt, 265465397511803988906881385371554131
  %i.dv = zext i1 %i.du to i32
  %.not94.i = icmp eq i32 %i.dv, 0
  br i1 %.not94.i, label %bb.af, label %.thread120.i

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !229
  %i.dy = icmp ugt i8 %i.dx, 2
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i16, ptr %i.aa, align 8, !tbaa !719
  %i.ea = or i16 %i.dz, 1
  store i16 %i.ea, ptr %i.aa, align 8, !tbaa !719
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !229 ; 2 uses
  %i.ed = icmp ugt i8 %i.ec, 2
  br i1 %i.ed, label %.thread120.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i8 %i.ec, 2
  br i1 %i.ee, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i16, ptr %i.aa, align 8, !tbaa !719
  %i.eg = and i16 %i.ef, 32
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.ei = call fastcc i32 @sqlite3PagerOpenWal(ptr noundef nonnull %i.df, ptr noundef nonnull %i.b), !inline_history !1958 ; 2 uses
  %.not95.i = icmp eq i32 %i.ei, 0
  br i1 %.not95.i, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.ej = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.thread136.i, label %bb.am

.thread136.i:                                     ; preds = %bb.al
  %i.el = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val104.i = load ptr, ptr %i.el, align 8, !tbaa !692
  call fastcc void @releasePageOne(ptr %.val104.i), !inline_history !1958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %lockBtree.exit.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 21 ; 2 uses
  %i.en = load i16, ptr %i.em, align 1
  %i.eo = xor i16 %i.en, 8256
  %i.ep = getelementptr i8, ptr %i.em, i64 2
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i16
  %i.es = xor i16 %i.er, 32
  %i.et = or i16 %i.eo, %i.es
  %i.eu = icmp ne i16 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %.not97.i = icmp eq i32 %i.ev, 0
  br i1 %.not97.i, label %bb.ao, label %.thread120.i

bb.ao:                                            ; preds = %bb.an
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ex = load i16, ptr %i.ew, align 1            ; 2 uses
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 8                ; 5 uses
  %i.fa = add nuw nsw i32 %i.ez, 16776960
  %i.fb = and i32 %i.fa, %i.ez
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = add i16 %i.ex, -257
  %i.fe = icmp ult i16 %i.fd, -255
  %or.cond3.i = or i1 %i.fe, %i.fc
  br i1 %or.cond3.i, label %.thread120.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !229
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = sub nuw nsw i32 %i.ez, %i.fh            ; 4 uses
  %i.fj = load i32, ptr %i.bk, align 4, !tbaa !133
  %.not98.i = icmp eq i32 %i.ez, %i.fj
  br i1 %.not98.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val103.i = load ptr, ptr %i.fk, align 8, !tbaa !692
  call fastcc void @releasePageOne(ptr %.val103.i), !inline_history !1958
  store i32 %i.fi, ptr %i.bl, align 8, !tbaa !751
  store i32 %i.ez, ptr %i.bk, align 4, !tbaa !133
  %i.fl = load i16, ptr %i.aa, align 8, !tbaa !719
  %i.fm = or i16 %i.fl, 2
  store i16 %i.fm, ptr %i.aa, align 8, !tbaa !719
  %i.fn = load ptr, ptr %i.bm, align 8, !tbaa !1314 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.fn, null
  br i1 %.not.i105.i, label %lockBtree.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4 ; 2 uses
  store ptr %i.fo, ptr %i.bm, align 8, !tbaa !1314
  call fastcc void @pcache1Free(ptr noundef nonnull %i.fo), !inline_history !1958
  store ptr null, ptr %i.bm, align 8, !tbaa !1314
  br label %lockBtree.exit

bb.as:                                            ; preds = %bb.ap
  %i.fp = icmp ugt i32 %.077.i, %.val.i
  br i1 %i.fp, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %i.bj, align 8, !tbaa !1944
  %i.fr = getelementptr i8, ptr %i.fq, i64 48
  %.val101.i = load i64, ptr %i.fr, align 8, !tbaa !547
  %i.fs = and i64 %.val101.i, 268435457
  %.not140.i = icmp eq i64 %i.fs, 1
  br i1 %.not140.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 75998, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !1958
  br label %.thread120.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %.279.i = phi i32 [ %.077.i, %bb.as ], [ %.val.i, %bb.at ]
  %i.ft = icmp samesign ult i32 %i.fi, 480
  br i1 %i.ft, label %.thread120.i, label %.thread131.i

.thread131.i:                                     ; preds = %bb.av
  %i.fu = load i16, ptr %i.aa, align 8, !tbaa !719
  %i.fv = or i16 %i.fu, 2
  store i16 %i.fv, ptr %i.aa, align 8, !tbaa !719
  store i32 %i.fi, ptr %i.bl, align 8, !tbaa !751
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %3 = load i32, ptr %i.fw, align 1, !tbaa !229
  %i.fx = icmp ne i32 %3, 0
  %i.fy = zext i1 %i.fx to i8
  store i8 %i.fy, ptr %i.bn, align 1, !tbaa !744
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %4 = load i32, ptr %i.fz, align 1, !tbaa !229
  %i.ga = icmp ne i32 %4, 0
  %i.gb = zext i1 %i.ga to i8
  store i8 %i.gb, ptr %i.bo, align 2, !tbaa !693
  br label %lockBtree.exit.thread.thread

bb.aw:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.thread120.i

lockBtree.exit.thread.thread:                     ; preds = %._crit_edge141.i, %.thread131.i
  %i.gc = phi i32 [ %i.fi, %.thread131.i ], [ %.pre143.i, %._crit_edge141.i ] ; 3 uses
  %.4.i = phi i32 [ %.279.i, %.thread131.i ], [ 0, %._crit_edge141.i ]
  %i.gd = shl i32 %i.gc, 6
  %i.ge = shl i32 %i.gc, 5
  %i.gf = insertelement <2 x i32> poison, i32 %i.gd, i64 0
  %i.gg = insertelement <2 x i32> %i.gf, i32 %i.ge, i64 1
  %i.gh = add <2 x i32> %i.gg, <i32 -768, i32 -384>
  %i.gi = udiv <2 x i32> %i.gh, splat (i32 255)
  %i.gj = trunc <2 x i32> %i.gi to <2 x i16>
  %i.gk = add <2 x i16> %i.gj, splat (i16 -23)    ; 3 uses
  store <2 x i16> %i.gk, ptr %i.bp, align 2, !tbaa !332
  %i.gl = trunc i32 %i.gc to i16
  %i.gm = add i16 %i.gl, -35
  store i16 %i.gm, ptr %i.bq, align 2, !tbaa !1960
  %i.gn = extractelement <2 x i16> %i.gk, i64 1
  store i16 %i.gn, ptr %i.br, align 8, !tbaa !1961
  %i.go = extractelement <2 x i16> %i.gk, i64 0
  %spec.select152.i = call i16 @llvm.umin.i16(i16 %i.go, i16 127)
  %spec.select.i = trunc nuw nsw i16 %spec.select152.i to i8
  store i8 %spec.select.i, ptr %i.bs, align 1, !tbaa !1962
  store ptr %.val13.i.i.i, ptr %i.bi, align 8, !tbaa !660
  store i32 %.4.i, ptr %i.be, align 8, !tbaa !670
  br label %.critedge

.thread120.i:                                     ; preds = %bb.ao, %bb.an, %bb.ah, %bb.ae, %bb.av, %bb.aw, %bb.au
  %.276125.i = phi i32 [ %i.ei, %bb.aw ], [ 11, %bb.au ], [ 26, %bb.av ], [ 26, %bb.ae ], [ 26, %bb.ah ], [ 26, %bb.an ], [ 26, %bb.ao ]
  %i.gp = getelementptr i8, ptr %.val13.i.i.i, i64 112
  %.val102.i = load ptr, ptr %i.gp, align 8, !tbaa !692 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.val102.i, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !522 ; 2 uses
  call fastcc void @sqlite3PcacheRelease(ptr noundef %.val102.i), !inline_history !1963
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 288
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !90
  %i.gu = getelementptr i8, ptr %i.gt, i64 24
  %.val.i.i.i.i = load i64, ptr %i.gu, align 8, !tbaa !767
  %i.gv = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.gv, label %bb.ax, label %releasePageOne.exit.i

bb.ax:                                            ; preds = %.thread120.i
  call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.gr), !inline_history !1964
  br label %releasePageOne.exit.i

releasePageOne.exit.i:                            ; preds = %bb.ax, %.thread120.i
  store ptr null, ptr %i.bi, align 8, !tbaa !660
  br label %.thread152thread-pre-split

lockBtree.exit:                                   ; preds = %bb.aq, %bb.ar
  %i.gw = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.gx = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef %i.gw, ptr noundef nonnull %i.bk, i32 noundef %i.fh), !inline_history !1958 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %lockBtree.exit.thread, label %.thread152thread-pre-split, !llvm.loop !1957

.critedge:                                        ; preds = %lockBtree.exit.thread, %lockBtree.exit.thread.thread, %bb.w
  %.2.lcssa = phi i32 [ %.194, %bb.w ], [ 0, %lockBtree.exit.thread.thread ], [ 0, %lockBtree.exit.thread ] ; 2 uses
  %i.gz = icmp eq i32 %.2.lcssa, 0
  %or.cond5 = and i1 %i.q, %i.gz
  br i1 %or.cond5, label %bb.ay, label %bb.bu

bb.ay:                                            ; preds = %.critedge
  %i.ha = load i16, ptr %i.aa, align 8, !tbaa !719
  %i.hb = and i16 %i.ha, 1
  %.not112 = icmp eq i16 %i.hb, 0
  br i1 %.not112, label %bb.az, label %.thread152thread-pre-split

bb.az:                                            ; preds = %bb.ay
  %i.hc = load i32, ptr %i.bu, align 8, !tbaa !680 ; 2 uses
  %.not.i124 = icmp eq i32 %i.hc, 0
  br i1 %.not.i124, label %bb.ba, label %sqlite3PagerBegin.exit

bb.ba:                                            ; preds = %bb.az
  %i.hd = load ptr, ptr %0, align 8, !tbaa !663
  %i.he = getelementptr i8, ptr %i.hd, i64 102
  %.val121 = load i8, ptr %i.he, align 2, !tbaa !1965
  %i.hf = icmp eq i8 %.val121, 2
  %i.hg = zext i1 %i.hf to i8
  store i8 %i.hg, ptr %i.bv, align 2, !tbaa !1966
  %i.hh = load i8, ptr %i.bw, align 1, !tbaa !722
  %i.hi = icmp eq i8 %i.hh, 1
  br i1 %i.hi, label %bb.bb, label %sqlite3PagerBegin.exit.thread147

bb.bb:                                            ; preds = %bb.ba
  %i.hj = load ptr, ptr %i.bx, align 8, !tbaa !597 ; 6 uses
  %.not32.i = icmp eq ptr %i.hj, null
  br i1 %.not32.i, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hk = load i8, ptr %i.by, align 8, !tbaa !738
  %.not33.i = icmp eq i8 %i.hk, 0
  br i1 %.not33.i, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 63 ; 3 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !1967
  %.not.i14.i.not.i = icmp eq i8 %i.hm, 0
  br i1 %.not.i14.i.not.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.hn = load i8, ptr %i.bz, align 2, !tbaa !1968
  switch i8 %i.hn, label %.thread.i [
    i8 5, label %bb.bf
    i8 3, label %bb.bf
    i8 2, label %bb.bf
    i8 1, label %bb.bf
    i8 0, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be, %bb.be
  %i.ho = load i8, ptr %i.ca, align 1, !tbaa !1969
  %.not.i.i126 = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i126, label %bb.bg, label %.thread70.i

.thread70.i:                                      ; preds = %bb.bf
  store i8 4, ptr %i.bz, align 2, !tbaa !1968
  br label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.hp = load ptr, ptr %i.cb, align 8, !tbaa !526 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !475
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !1970
  %i.ht = call i32 %i.hs(ptr noundef nonnull %i.hp, i32 noundef range(i32 1, 5) 4) #59, !inline_history !1971 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.bh, label %sqlite3PagerBegin.exit

bb.bh:                                            ; preds = %bb.bg
  %.pre.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !597 ; 3 uses
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 63 ; 3 uses
  %.pre60.pre.i = load i8, ptr %.phi.trans.insert.phi.trans.insert.i, align 1, !tbaa !1967
  %i.hv = icmp eq i8 %.pre60.pre.i, 0
  store i8 4, ptr %i.bz, align 2, !tbaa !1968
  br i1 %i.hv, label %.thread.i, label %sqlite3WalExclusiveMode.exit.i

.thread.i:                                        ; preds = %bb.be, %bb.bh, %.thread70.i
  %i.hw = phi ptr [ %i.hl, %.thread70.i ], [ %.phi.trans.insert.phi.trans.insert.i, %bb.bh ], [ %i.hl, %bb.be ]
  %i.hx = phi ptr [ %i.hj, %.thread70.i ], [ %.pre.pre.i, %bb.bh ], [ %i.hj, %bb.be ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 60
  %i.hz = load i16, ptr %i.hy, align 4, !tbaa !1972
  %i.ia = sext i16 %i.hz to i32
  %i.ib = add nsw i32 %i.ia, 3
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !1973 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !475
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 112
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1523
  %i.ih = call i32 %i.ig(ptr noundef nonnull %i.id, i32 noundef range(i32 -2147483645, -2147483648) %i.ib, i32 noundef 1, i32 noundef 5) #59, !inline_history !1974 ; 0 uses
  %.pre61.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !597
  br label %sqlite3WalExclusiveMode.exit.i

sqlite3WalExclusiveMode.exit.i:                   ; preds = %.thread.i, %bb.bh
  %i.ii = phi ptr [ %.phi.trans.insert.phi.trans.insert.i, %bb.bh ], [ %i.hw, %.thread.i ]
  %.pre61.i = phi ptr [ %.pre.pre.i, %bb.bh ], [ %.pre61.pre.i, %.thread.i ]
  store i8 1, ptr %i.ii, align 1, !tbaa !1967
  br label %bb.bi

bb.bi:                                            ; preds = %sqlite3WalExclusiveMode.exit.i, %bb.bd, %bb.bc
  %i.ij = phi ptr [ %.pre61.i, %sqlite3WalExclusiveMode.exit.i ], [ %i.hj, %bb.bd ], [ %i.hj, %bb.bc ] ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 66
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !1975
  %.not.i39.i = icmp eq i8 %i.il, 0
  br i1 %.not.i39.i, label %bb.bj, label %.thread152thread-pre-split

bb.bj:                                            ; preds = %bb.bi
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 63 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !1967
  %.not.i.i.i125 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i125, label %walLockExclusive.exit.i.i, label %walLockExclusive.exit.thread.i.i

walLockExclusive.exit.i.i:                        ; preds = %bb.bj
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !1973 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !475
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 112
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !1523
  %i.it = call i32 %i.is(ptr noundef nonnull %i.ip, i32 noundef range(i32 -2147483645, -2147483648) 0, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !1976 ; 2 uses
  %.not13.i.i = icmp eq i32 %i.it, 0
  br i1 %.not13.i.i, label %walLockExclusive.exit.thread.i.i, label %sqlite3PagerBegin.exit

walLockExclusive.exit.thread.i.i:                 ; preds = %walLockExclusive.exit.i.i, %bb.bj
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 64 ; 2 uses
  store i8 1, ptr %i.iu, align 8, !tbaa !1977
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.iw = getelementptr i8, ptr %i.ij, i64 48
  %.val.i.i = load ptr, ptr %i.iw, align 8, !tbaa !1978
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !350
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.iv, ptr noundef nonnull dereferenceable(48) %.val.val.i.i, i64 48)
  %.not14.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not14.i.i, label %sqlite3WalBeginWriteTransaction.exit.thread56.i, label %bb.bk

bb.bk:                                            ; preds = %walLockExclusive.exit.thread.i.i
  %i.ix = load i8, ptr %i.im, align 1, !tbaa !1967
  %.not.i16.i.i = icmp eq i8 %i.ix, 0
end_hunk_0
begin_hunk_1_@btreeEndTransaction:bb.a
bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1951 ; 2 uses
  %.not19.i = icmp eq ptr %i.t, null
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.e, %sqlite3_free.exit.i
  %i.u = phi ptr [ %i.ap, %sqlite3_free.exit.i ], [ %i.t, %bb.e ] ; 6 uses
  %.020.i = phi ptr [ %.1.i, %sqlite3_free.exit.i ], [ %i.s, %bb.e ] ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1953
  %i.w = icmp eq ptr %i.v, %0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.w, label %bb.f, label %sqlite3_free.exitthread-pre-split.i

bb.f:                                             ; preds = %.lr.ph.i15
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2347 ; 2 uses
  store ptr %i.y, ptr %.020.i, align 8, !tbaa !1951
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1954
  %.not18.i = icmp eq i32 %i.aa, 1
  br i1 %.not18.i, label %sqlite3_free.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !2348
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %i.u) #59, !inline_history !2349
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ai = sub nsw i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.al(ptr noundef nonnull %i.u) #59, !inline_history !2350
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exitthread-pre-split.i, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !2351
  br label %sqlite3_free.exitthread-pre-split.i

bb.k:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ao(ptr noundef nonnull %i.u) #59, !inline_history !2350
  br label %sqlite3_free.exitthread-pre-split.i

sqlite3_free.exitthread-pre-split.i:              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.i, %.lr.ph.i15
  %.1.ph.i = phi ptr [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.020.i, %sqlite3_mutex_enter.exit.i.i ], [ %i.x, %.lr.ph.i15 ] ; 2 uses
  %.pr.i = load ptr, ptr %.1.ph.i, align 8, !tbaa !1951
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %sqlite3_free.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %sqlite3_free.exitthread-pre-split.i ], [ %i.y, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.1.ph.i, %sqlite3_free.exitthread-pre-split.i ], [ %.020.i, %bb.f ]
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !2352

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1950
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1950
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
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !719
  %i.ay = and i16 %i.ax, %.sink26.i
  store i16 %i.ay, ptr %i.aw, align 8, !tbaa !719
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
  store i8 0, ptr %i.bd, align 4, !tbaa !656
  br label %.thread

.thread:                                          ; preds = %bb.a, %clearAllSharedCacheTableLocks.exit, %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !648
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !656
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %unlockBtreeIfUnused.exit

bb.o:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !660 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %unlockBtreeIfUnused.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bh, align 8, !tbaa !660
  %i.bj = getelementptr i8, ptr %i.bi, i64 112
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !692 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !522 ; 2 uses
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef %.val.i), !inline_history !1988
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !90
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !767
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !751
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %2, -2                           ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !133
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
  %i.w = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !133
  %i.z = udiv i32 %i.w, %i.y
  %i.aa = add i32 %i.z, 1
  %.not = icmp eq i32 %2, %i.aa
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !660
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !661
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %4 = load i32, ptr %i.af, align 1, !tbaa !229
  %i.ag = icmp eq i32 %4, 0
  br i1 %i.ag, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not65 = icmp eq i32 %i.ah, 0
  br i1 %.not65, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !229  ; 2 uses
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
  %.val.us = load i32, ptr %i.ao, align 8, !tbaa !670
  %i.ap = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %1, i8 noundef zeroext 2) ; 2 uses
  %.not67.us = icmp eq i32 %i.ap, 0
  br i1 %.not67.us, label %bb.m, label %.split104.us

bb.m:                                             ; preds = %.split.us
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !2045 ; 2 uses
  %.not.i74.us = icmp eq ptr %i.aq, null
  br i1 %.not.i74.us, label %releasePage.exit77.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.aq, i64 112
  %.val.i75.us = load ptr, ptr %i.ar, align 8, !tbaa !692 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 52
  %i.at = load i16, ptr %i.as, align 4, !tbaa !521
  %i.au = and i16 %i.at, 32
  %.not.i.i.i76.us = icmp eq i16 %i.au, 0
  br i1 %.not.i.i.i76.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !522 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !523
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !523
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 168 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !524
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 32
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !525
  store ptr %.val.i75.us, ptr %i.ba, align 8, !tbaa !524
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !526 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !527
  %i.bh = add i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !81
  %i.bl = mul nsw i64 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i75.us, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !518
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !475
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !528
  %i.br = call i32 %i.bq(ptr noundef nonnull %i.be, i64 noundef %i.bl, ptr noundef %i.bn) #59, !inline_history !2353 ; 0 uses
  br label %releasePage.exit77.us

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i75.us)
  br label %releasePage.exit77.us

releasePage.exit77.us:                            ; preds = %bb.p, %bb.o, %bb.m
  %i.bs = load i32, ptr %i.e, align 4, !tbaa !24  ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, %.val.us
  br i1 %i.bt, label %.split106.us, label %.split108.us

.split108.us:                                     ; preds = %releasePage.exit77.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %.split108

.split:                                           ; preds = %bb.l, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  %.val = load i32, ptr %i.ao, align 8, !tbaa !670
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
  %.val.i = load ptr, ptr %i.bw, align 8, !tbaa !692 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !521
  %i.bz = and i16 %i.by, 32
  %.not.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !522 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 152 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !523
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !523
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 168 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !524
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !525
  store ptr %.val.i, ptr %i.cf, align 8, !tbaa !524
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !526 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !527
  %i.cm = add i32 %i.cl, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !81
  %i.cq = mul nsw i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !518
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !475
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !528
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
  %.val.i75 = load ptr, ptr %i.cy, align 8, !tbaa !692 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i75, i64 52
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !521
  %i.db = and i16 %i.da, 32
  %.not.i.i.i76 = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.i76, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i75, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !522 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 152 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !523
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !523
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 168 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !524
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i75, i64 32
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !525
  store ptr %.val.i75, ptr %i.dh, align 8, !tbaa !524
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !526 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i75, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !527
  %i.do = add i32 %i.dn, -1
  %i.dp = zext i32 %i.do to i64
end_hunk_1
begin_hunk_2_@sqlite3VdbeExec:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.gdg = load i32, ptr %i.gcs, align 4, !tbaa !24
  %i.gdh = icmp eq i32 %i.gdg, 0                  ; 4 uses
  br i1 %i.gdh, label %bb.aph, label %bb.api

bb.aph:                                           ; preds = %bb.apg
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.gcf, i64 8
  %i.gdj = load i32, ptr %i.gdi, align 4, !tbaa !24
  %.not.i4409 = icmp ne i32 %i.gdj, 1
  br label %bb.api

bb.api:                                           ; preds = %bb.aph, %bb.apg
  %.not82.i = phi i1 [ false, %bb.apg ], [ %.not.i4409, %bb.aph ]
  %i.gdk = getelementptr inbounds nuw i8, ptr %i.gcr, i64 17 ; 2 uses
  %i.gdl = load i8, ptr %i.gdk, align 1, !tbaa !594
  %.not.i.i4388 = icmp eq i8 %i.gdl, 0
  br i1 %.not.i.i4388, label %sqlite3BtreeEnter.exit.i4390, label %bb.apj

bb.apj:                                           ; preds = %bb.api
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.gcr, i64 20 ; 2 uses
  %i.gdn = load i32, ptr %i.gdm, align 4, !tbaa !595
  %i.gdo = add nsw i32 %i.gdn, 1
  store i32 %i.gdo, ptr %i.gdm, align 4, !tbaa !595
  %i.gdp = getelementptr inbounds nuw i8, ptr %i.gcr, i64 18
  %i.gdq = load i8, ptr %i.gdp, align 2, !tbaa !596
  %.not4.i.i4389 = icmp eq i8 %i.gdq, 0
  br i1 %.not4.i.i4389, label %bb.apk, label %sqlite3BtreeEnter.exit.i4390

bb.apk:                                           ; preds = %bb.apj
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.gcr)
  br label %sqlite3BtreeEnter.exit.i4390

sqlite3BtreeEnter.exit.i4390:                     ; preds = %bb.apk, %bb.apj, %bb.api
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i8 0, i64 120, i1 false)
  store ptr %i.an, ptr %i.dy, align 8, !tbaa !2809
  store ptr %i.gdb, ptr %4, align 8, !tbaa !2811
  %i.gdr = load ptr, ptr %i.gdb, align 8, !tbaa !75
  store ptr %i.gdr, ptr %i.dx, align 8, !tbaa !2812
  %i.gds = getelementptr i8, ptr %i.gdb, i64 64
  %.val.i4391 = load i32, ptr %i.gds, align 8, !tbaa !670 ; 3 uses
  store i32 %.val.i4391, ptr %i.dz, align 8, !tbaa !2813
  store i32 %i.gcz, ptr %i.ea, align 4, !tbaa !2814
  store ptr %i.c, ptr %i.ec, align 8, !tbaa !284
  store i32 100, ptr %i.ed, align 8, !tbaa !282
  store i32 1000000000, ptr %i.ee, align 4, !tbaa !301
  store i8 1, ptr %i.eg, align 1, !tbaa !2815
  %i.gdt = icmp eq i32 %.val.i4391, 0
  br i1 %i.gdt, label %checkOom.exit.i, label %bb.apl

bb.apl:                                           ; preds = %sqlite3BtreeEnter.exit.i4390
  %i.gdu = lshr i32 %.val.i4391, 3
  %i.gdv = add nuw nsw i32 %i.gdu, 1
  %i.gdw = zext nneg i32 %i.gdv to i64            ; 2 uses
  %i.gdx = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.gdw) ; 3 uses
  %.not.i96.i = icmp eq ptr %i.gdx, null
  br i1 %.not.i96.i, label %bb.apm, label %bb.apn

bb.apm:                                           ; preds = %bb.apl
  store ptr null, ptr %i.eh, align 8, !tbaa !2816
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.gdy = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.gdz = icmp eq i32 %i.gdy, 0
  br i1 %i.gdz, label %checkOom.exit.i.sink.split, label %checkOom.exit.i

bb.apn:                                           ; preds = %bb.apl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gdx, i8 0, i64 range(i64 -180388626400, 180388626381) %i.gdw, i1 false)
  store ptr %i.gdx, ptr %i.eh, align 8, !tbaa !2816
  %i.gea = getelementptr inbounds nuw i8, ptr %i.gdb, i64 52 ; 4 uses
  %i.geb = load i32, ptr %i.gea, align 4, !tbaa !133
  %i.gec = call fastcc ptr @pcache1Alloc(i32 noundef %i.geb) ; 2 uses
  store ptr %i.gec, ptr %i.ei, align 8, !tbaa !2819
  %i.ged = icmp eq ptr %i.gec, null
  br i1 %i.ged, label %bb.apo, label %bb.app

bb.apo:                                           ; preds = %bb.apn
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.gee = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.gef = icmp eq i32 %i.gee, 0
  br i1 %i.gef, label %checkOom.exit.i.sink.split, label %checkOom.exit.i

bb.app:                                           ; preds = %bb.apn
  %i.geg = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !24
  %i.geh = load i32, ptr %i.gea, align 4, !tbaa !133
  %i.gei = udiv i32 %i.geg, %i.geh
  %i.gej = add i32 %i.gei, 1                      ; 3 uses
  %i.gek = load i32, ptr %i.dz, align 8, !tbaa !2813
  %.not81.i = icmp ugt i32 %i.gej, %i.gek
  br i1 %.not81.i, label %bb.apr, label %bb.apq

bb.apq:                                           ; preds = %bb.app
  %.val93.i = load ptr, ptr %i.eh, align 8, !tbaa !2816
  %i.gel = and i32 %i.gej, 7
  %i.gem = shl nuw nsw i32 1, %i.gel
  %i.gen = lshr i32 %i.gej, 3
  %i.geo = zext nneg i32 %i.gen to i64
  %i.gep = getelementptr inbounds nuw i8, ptr %.val93.i, i64 %i.geo ; 2 uses
  %i.geq = load i8, ptr %i.gep, align 1, !tbaa !229
  %i.ger = trunc nuw i32 %i.gem to i8
  %i.ges = or i8 %i.geq, %i.ger
  store i8 %i.ges, ptr %i.gep, align 1, !tbaa !229
  br label %bb.apr

bb.apr:                                           ; preds = %bb.apq, %bb.app
  br i1 %.not82.i, label %bb.apt, label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  store ptr @.str.410, ptr %i.ej, align 8, !tbaa !2820
  %i.get = getelementptr inbounds nuw i8, ptr %i.gdb, i64 24
  %i.geu = load ptr, ptr %i.get, align 8, !tbaa !660
  %i.gev = getelementptr inbounds nuw i8, ptr %i.geu, i64 80
  %i.gew = load ptr, ptr %i.gev, align 8, !tbaa !661 ; 2 uses
  %i.gex = getelementptr inbounds nuw i8, ptr %i.gew, i64 32
  %i.gey = load i32, ptr %i.gex, align 1
  %i.gez = call i32 @llvm.bswap.i32(i32 %i.gey)
  %i.gfa = getelementptr inbounds nuw i8, ptr %i.gew, i64 36
  %i.gfb = load i32, ptr %i.gfa, align 1
  %i.gfc = call i32 @llvm.bswap.i32(i32 %i.gfb)
  call fastcc void @checkList(ptr noundef %4, i32 noundef 1, i32 noundef %i.gez, i32 noundef %i.gfc)
  store ptr null, ptr %i.ej, align 8, !tbaa !2820
  br label %bb.apt

bb.apt:                                           ; preds = %bb.aps, %bb.apr
  br i1 %i.gdh, label %bb.apy, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.gdb, i64 33
  %i.gfe = load i8, ptr %i.gfd, align 1, !tbaa !744
  %.not83.i = icmp eq i8 %i.gfe, 0
  br i1 %.not83.i, label %bb.apw, label %.preheader109.i

.preheader109.i:                                  ; preds = %bb.apu
  %i.gff = icmp sgt i32 %i.gcd, 0
  br i1 %i.gff, label %.lr.ph.preheader.i, label %._crit_edge.i4392

.lr.ph.preheader.i:                               ; preds = %.preheader109.i
  %wide.trip.count.i4404 = zext nneg i32 %i.gcd to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gcd, 8
  br i1 %min.iters.check, label %.lr.ph.i4405.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i4404, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gfi, %vector.body ]
  %vec.phi12530 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gfj, %vector.body ]
  %i.gfg = getelementptr inbounds nuw [4 x i8], ptr %i.gcs, i64 %index ; 2 uses
  %i.gfh = getelementptr inbounds nuw i8, ptr %i.gfg, i64 16
  %wide.load = load <4 x i32>, ptr %i.gfg, align 4, !tbaa !24
  %wide.load12531 = load <4 x i32>, ptr %i.gfh, align 4, !tbaa !24
  %i.gfi = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.gfj = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi12530, <4 x i32> %wide.load12531) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gfk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gfk, label %middle.block, label %vector.body, !llvm.loop !2821

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.gfi, <4 x i32> %i.gfj)
  %i.gfl = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i4404
  br i1 %cmp.n, label %._crit_edge.i4392, label %.lr.ph.i4405.preheader

.lr.ph.i4405.preheader:                           ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i4406.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.071110.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gfl, %middle.block ]
  br label %.lr.ph.i4405

.lr.ph.i4405:                                     ; preds = %.lr.ph.i4405.preheader, %.lr.ph.i4405
  %indvars.iv.i4406 = phi i64 [ %indvars.iv.next.i4407, %.lr.ph.i4405 ], [ %indvars.iv.i4406.ph, %.lr.ph.i4405.preheader ] ; 2 uses
  %.071110.i = phi i32 [ %spec.select92.i, %.lr.ph.i4405 ], [ %.071110.i.ph, %.lr.ph.i4405.preheader ]
  %i.gfm = getelementptr inbounds nuw [4 x i8], ptr %i.gcs, i64 %indvars.iv.i4406
  %i.gfn = load i32, ptr %i.gfm, align 4, !tbaa !24
  %spec.select92.i = call i32 @llvm.umax.i32(i32 %.071110.i, i32 %i.gfn) ; 2 uses
  %indvars.iv.next.i4407 = add nuw nsw i64 %indvars.iv.i4406, 1 ; 2 uses
  %exitcond.not.i4408 = icmp eq i64 %indvars.iv.next.i4407, %wide.trip.count.i4404
  br i1 %exitcond.not.i4408, label %._crit_edge.i4392, label %.lr.ph.i4405, !llvm.loop !2822

._crit_edge.i4392:                                ; preds = %.lr.ph.i4405, %middle.block, %.preheader109.i
  %.071.lcssa.i = phi i32 [ 0, %.preheader109.i ], [ %i.gfl, %middle.block ], [ %spec.select92.i, %.lr.ph.i4405 ] ; 2 uses
  %i.gfo = getelementptr inbounds nuw i8, ptr %i.gdb, i64 24
  %i.gfp = load ptr, ptr %i.gfo, align 8, !tbaa !660
  %i.gfq = getelementptr inbounds nuw i8, ptr %i.gfp, i64 80
  %i.gfr = load ptr, ptr %i.gfq, align 8, !tbaa !661
  %i.gfs = getelementptr inbounds nuw i8, ptr %i.gfr, i64 52
  %i.gft = load i32, ptr %i.gfs, align 1
  %i.gfu = call i32 @llvm.bswap.i32(i32 %i.gft)   ; 2 uses
  %.not85.i = icmp eq i32 %.071.lcssa.i, %i.gfu
  br i1 %.not85.i, label %bb.apy, label %bb.apv

bb.apv:                                           ; preds = %._crit_edge.i4392
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %4, ptr noundef nonnull @.str.411, i32 noundef %.071.lcssa.i, i32 noundef %i.gfu)
  br label %bb.apy

bb.apw:                                           ; preds = %bb.apu
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.gdb, i64 24
  %i.gfw = load ptr, ptr %i.gfv, align 8, !tbaa !660
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.gfw, i64 80
  %i.gfy = load ptr, ptr %i.gfx, align 8, !tbaa !661
  %i.gfz = getelementptr inbounds nuw i8, ptr %i.gfy, i64 64
  %20 = load i32, ptr %i.gfz, align 1, !tbaa !229
  %i.gga = icmp eq i32 %20, 0
  br i1 %i.gga, label %bb.apy, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %4, ptr noundef nonnull @.str.412)
  br label %bb.apy

bb.apy:                                           ; preds = %bb.apx, %bb.apw, %bb.apv, %._crit_edge.i4392, %bb.apt
  %i.ggb = load ptr, ptr %i.gdc, align 8, !tbaa !1944
  %i.ggc = getelementptr inbounds nuw i8, ptr %i.ggb, i64 48 ; 2 uses
  %i.ggd = load i64, ptr %i.ggc, align 8, !tbaa !547
  %i.gge = and i64 %i.ggd, -2097153
  store i64 %i.gge, ptr %i.ggc, align 8, !tbaa !547
  %i.ggf = icmp sgt i32 %i.gcd, 0
  %i.ggg = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ggh = icmp ne i32 %i.ggg, 0
  %i.ggi = select i1 %i.ggf, i1 %i.ggh, i1 false
  br i1 %i.ggi, label %.lr.ph114.i, label %._crit_edge115.i

.lr.ph114.i:                                      ; preds = %bb.apy
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.gdb, i64 33
  %i.ggk = zext nneg i32 %i.gcd to i64            ; 2 uses
  br i1 %i.gdh, label %.lr.ph114.split.us.i, label %.lr.ph114.split.i

.lr.ph114.split.us.i:                             ; preds = %.lr.ph114.i, %sqlite3MemSetArrayInt64.exit.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %sqlite3MemSetArrayInt64.exit.us.i ], [ 0, %.lr.ph114.i ] ; 3 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !2823
  %i.ggl = getelementptr inbounds nuw [4 x i8], ptr %i.gcs, i64 %indvars.iv123.i
  %i.ggm = load i32, ptr %i.ggl, align 4, !tbaa !24 ; 3 uses
  %.not90.us.i = icmp eq i32 %i.ggm, 0
  br i1 %.not90.us.i, label %bb.aqa, label %bb.apz

bb.apz:                                           ; preds = %.lr.ph114.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 %i.ggm, ptr %i.en, align 8, !tbaa !2824
  %i.ggn = call fastcc i32 @checkTreePage(ptr noundef %4, i32 noundef %i.ggm, ptr noundef %i.d, i64 noundef 9223372036854775807) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %.pre127.i = load i64, ptr %i.ek, align 8, !tbaa !2823
  br label %bb.aqa

bb.aqa:                                           ; preds = %bb.apz, %.lr.ph114.split.us.i
  %i.ggo = phi i64 [ %.pre127.i, %bb.apz ], [ 0, %.lr.ph114.split.us.i ] ; 2 uses
  %i.ggp = getelementptr inbounds nuw [56 x i8], ptr %i.gcw, i64 %indvars.iv123.i ; 3 uses
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.ggp, i64 20 ; 2 uses
  %i.ggr = load i16, ptr %i.ggq, align 4, !tbaa !164
  %i.ggs = and i16 %i.ggr, -28672
  %.not.i.i.us.i = icmp eq i16 %i.ggs, 0
  br i1 %.not.i.i.us.i, label %bb.aqc, label %bb.aqb

bb.aqb:                                           ; preds = %bb.aqa
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ggp, i64 noundef %i.ggo)
  br label %sqlite3MemSetArrayInt64.exit.us.i

bb.aqc:                                           ; preds = %bb.aqa
  store i64 %i.ggo, ptr %i.ggp, align 8, !tbaa !229
  store i16 4, ptr %i.ggq, align 4, !tbaa !164
  br label %sqlite3MemSetArrayInt64.exit.us.i

sqlite3MemSetArrayInt64.exit.us.i:                ; preds = %bb.aqc, %bb.aqb
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.ggt = icmp samesign ult i64 %indvars.iv.next124.i, %i.ggk
  %i.ggu = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ggv = icmp ne i32 %i.ggu, 0
  %i.ggw = select i1 %i.ggt, i1 %i.ggv, i1 false
  br i1 %i.ggw, label %.lr.ph114.split.us.i, label %._crit_edge115.i, !llvm.loop !2825

.lr.ph114.split.i:                                ; preds = %.lr.ph114.i, %sqlite3MemSetArrayInt64.exit.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %sqlite3MemSetArrayInt64.exit.i ], [ 0, %.lr.ph114.i ] ; 3 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !2823
  %i.ggx = getelementptr inbounds nuw [4 x i8], ptr %i.gcs, i64 %indvars.iv120.i ; 2 uses
  %i.ggy = load i32, ptr %i.ggx, align 4, !tbaa !24 ; 6 uses
  %.not90.i = icmp eq i32 %i.ggy, 0
  br i1 %.not90.i, label %bb.aqk, label %bb.aqd

bb.aqd:                                           ; preds = %.lr.ph114.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.ggz = load i8, ptr %i.ggj, align 1, !tbaa !744
  %.not91.i = icmp eq i8 %i.ggz, 0
  %i.gha = icmp eq i32 %i.ggy, 1
  %i.ghb = or i1 %i.gha, %.not91.i
  br i1 %i.ghb, label %bb.aqj, label %bb.aqe

bb.aqe:                                           ; preds = %bb.aqd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ghc = load ptr, ptr %4, align 8, !tbaa !2811
  %i.ghd = call fastcc i32 @ptrmapGet(ptr noundef %i.ghc, i32 noundef %i.ggy, ptr noundef %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.ghd, label %checkOom.exit.i.i [
    i32 0, label %bb.aqh
    i32 3082, label %bb.aqf
    i32 7, label %bb.aqf
  ]

bb.aqf:                                           ; preds = %bb.aqe, %bb.aqe
  store i32 7, ptr %i.el, align 4, !tbaa !2817
  store i32 0, ptr %i.ea, align 4, !tbaa !2814
  %i.ghe = load i32, ptr %i.em, align 8, !tbaa !2818
  %i.ghf = icmp eq i32 %i.ghe, 0
  br i1 %i.ghf, label %bb.aqg, label %checkOom.exit.i.i

bb.aqg:                                           ; preds = %bb.aqf
  store i32 1, ptr %i.em, align 8, !tbaa !2818
  br label %checkOom.exit.i.i

checkOom.exit.i.i:                                ; preds = %bb.aqg, %bb.aqf, %bb.aqe
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %4, ptr noundef nonnull @.str.423, i32 noundef %i.ggy)
  br label %checkPtrmap.exit.i

bb.aqh:                                           ; preds = %bb.aqe
  %i.ghg = load i8, ptr %i.a, align 1, !tbaa !229 ; 2 uses
  %.not14.i.i4403 = icmp eq i8 %i.ghg, 1
  %i.ghh = load i32, ptr %i.b, align 4            ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ghh, 0
  %or.cond.i.i = select i1 %.not14.i.i4403, i1 %.not15.i.i, i1 false
  br i1 %or.cond.i.i, label %checkPtrmap.exit.i, label %bb.aqi

bb.aqi:                                           ; preds = %bb.aqh
  %i.ghi = zext i8 %i.ghg to i32
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %4, ptr noundef nonnull @.str.424, i32 noundef %i.ggy, i32 noundef 1, i32 noundef 0, i32 noundef %i.ghi, i32 noundef %i.ghh)
  br label %checkPtrmap.exit.i

checkPtrmap.exit.i:                               ; preds = %bb.aqi, %bb.aqh, %checkOom.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.pre.i4401 = load i32, ptr %i.ggx, align 4, !tbaa !24
  br label %bb.aqj

bb.aqj:                                           ; preds = %checkPtrmap.exit.i, %bb.aqd
  %i.ghj = phi i32 [ %.pre.i4401, %checkPtrmap.exit.i ], [ %i.ggy, %bb.aqd ] ; 2 uses
  store i32 %i.ghj, ptr %i.en, align 8, !tbaa !2824
  %i.ghk = call fastcc i32 @checkTreePage(ptr noundef %4, i32 noundef %i.ghj, ptr noundef %i.d, i64 noundef 9223372036854775807) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %.pre126.i = load i64, ptr %i.ek, align 8, !tbaa !2823
  br label %bb.aqk

bb.aqk:                                           ; preds = %bb.aqj, %.lr.ph114.split.i
  %i.ghl = phi i64 [ %.pre126.i, %bb.aqj ], [ 0, %.lr.ph114.split.i ] ; 2 uses
  %i.ghm = getelementptr inbounds nuw [56 x i8], ptr %i.gcw, i64 %indvars.iv120.i ; 3 uses
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.ghm, i64 20 ; 2 uses
  %i.gho = load i16, ptr %i.ghn, align 4, !tbaa !164
  %i.ghp = and i16 %i.gho, -28672
  %.not.i.i.i4402 = icmp eq i16 %i.ghp, 0
  br i1 %.not.i.i.i4402, label %bb.aqm, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ghm, i64 noundef %i.ghl)
  br label %sqlite3MemSetArrayInt64.exit.i

bb.aqm:                                           ; preds = %bb.aqk
  store i64 %i.ghl, ptr %i.ghm, align 8, !tbaa !229
  store i16 4, ptr %i.ghn, align 4, !tbaa !164
  br label %sqlite3MemSetArrayInt64.exit.i

sqlite3MemSetArrayInt64.exit.i:                   ; preds = %bb.aqm, %bb.aql
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.ghq = icmp samesign ult i64 %indvars.iv.next121.i, %i.ggk
  %i.ghr = load i32, ptr %i.ea, align 4           ; 2 uses
  %i.ghs = icmp ne i32 %i.ghr, 0
  %i.ght = select i1 %i.ghq, i1 %i.ghs, i1 false
  br i1 %i.ght, label %.lr.ph114.split.i, label %._crit_edge115.i, !llvm.loop !2825

._crit_edge115.i:                                 ; preds = %sqlite3MemSetArrayInt64.exit.i, %sqlite3MemSetArrayInt64.exit.us.i, %bb.apy
  %i.ghu = phi i32 [ %i.ggu, %sqlite3MemSetArrayInt64.exit.us.i ], [ %i.ggg, %bb.apy ], [ %i.ghr, %sqlite3MemSetArrayInt64.exit.i ]
  %i.ghv = load ptr, ptr %i.gdc, align 8, !tbaa !1944
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.ghv, i64 48
  store i64 %i.gdf, ptr %i.ghw, align 8, !tbaa !547
  br i1 %i.gdh, label %checkOom.exit.i, label %.preheader.i4393

.preheader.i4393:                                 ; preds = %._crit_edge115.i
  %i.ghx = load i32, ptr %i.dz, align 8, !tbaa !2813
  %i.ghy = icmp ne i32 %i.ghx, 0
  %i.ghz = icmp ne i32 %i.ghu, 0
  %i.gia = select i1 %i.ghy, i1 %i.ghz, i1 false
  br i1 %i.gia, label %.lr.ph117.i, label %checkOom.exit.i

.lr.ph117.i:                                      ; preds = %.preheader.i4393
  %i.gib = getelementptr inbounds nuw i8, ptr %i.gdb, i64 56 ; 2 uses
  %i.gic = getelementptr inbounds nuw i8, ptr %i.gdb, i64 33 ; 2 uses
  br label %bb.aqn

bb.aqn:                                           ; preds = %.thread.i, %.lr.ph117.i
  %.2116.i = phi i32 [ 1, %.lr.ph117.i ], [ %i.gjo, %.thread.i ] ; 11 uses
  %.val95.i = load ptr, ptr %i.eh, align 8, !tbaa !2816
  %i.gid = lshr i32 %.2116.i, 3
  %i.gie = zext nneg i32 %i.gid to i64            ; 2 uses
  %i.gif = getelementptr inbounds nuw i8, ptr %.val95.i, i64 %i.gie
  %i.gig = load i8, ptr %i.gif, align 1, !tbaa !229
  %i.gih = zext i8 %i.gig to i32
  %i.gii = and i32 %.2116.i, 7
  %i.gij = shl nuw nsw i32 1, %i.gii              ; 2 uses
  %i.gik = and i32 %i.gij, %i.gih
  %i.gil = icmp eq i32 %i.gik, 0
  br i1 %i.gil, label %bb.aqo, label %.thread146.i

bb.aqo:                                           ; preds = %bb.aqn
  %i.gim = icmp ult i32 %.2116.i, 2
  br i1 %i.gim, label %ptrmapPageno.exit.i, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.gin = load i32, ptr %i.gib, align 8, !tbaa !751
  %i.gio = udiv i32 %i.gin, 5
end_hunk_2
begin_hunk_3_@sqlite3BtreeCursor:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %.033.i, ptr %i.aw, align 8, !tbaa !1018
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 84
  store i8 -1, ptr %i.ax, align 4, !tbaa !2360
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr %3, ptr %i.ay, align 8, !tbaa !2705
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.az, align 8, !tbaa !1000
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.ar, ptr %i.ba, align 8, !tbaa !1017
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  store i8 0, ptr %i.bb, align 1, !tbaa !746
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.036.i = load ptr, ptr %i.bc, align 8, !tbaa !745 ; 3 uses
  %.not37.i = icmp eq ptr %.036.i, null
  br i1 %.not37.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.u
  %i.bd = phi i8 [ %i.bk, %bb.u ], [ 0, %bb.s ]
  %.038.i = phi ptr [ %.0.i, %bb.u ], [ %.036.i, %bb.s ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.038.i, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1018
  %i.bg = icmp eq i32 %i.bf, %.033.i
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.038.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !746
  %i.bj = or i8 %i.bi, 32
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !746
  store i8 32, ptr %i.bb, align 1, !tbaa !746
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.bk = phi i8 [ %i.bd, %.lr.ph.i ], [ 32, %bb.t ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.038.i, i64 40
  %.0.i = load ptr, ptr %i.bl, align 8, !tbaa !745 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !2901

._crit_edge.loopexit.i:                           ; preds = %bb.u
  %i.bm = or disjoint i8 %i.bk, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.s
  %i.bn = phi i8 [ %i.bm, %._crit_edge.loopexit.i ], [ 1, %bb.s ]
  store i8 1, ptr %4, align 8, !tbaa !839
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.036.i, ptr %i.bo, align 8, !tbaa !2358
  store ptr %4, ptr %i.bc, align 8, !tbaa !2463
  %.not35.i = icmp eq i32 %2, 0
  br i1 %.not35.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  store i8 %i.bn, ptr %i.bb, align 1, !tbaa !746
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 0, ptr %i.bp, align 2, !tbaa !2902
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1314
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %btreeCursorWithLock.exit

bb.w:                                             ; preds = %bb.v
  %i.bt = tail call fastcc i32 @allocateTempSpace(ptr noundef nonnull %i.ar)
  br label %btreeCursorWithLock.exit

bb.x:                                             ; preds = %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 2, ptr %i.bu, align 2, !tbaa !2902
  br label %btreeCursorWithLock.exit

btreeCursorWithLock.exit:                         ; preds = %bb.x, %bb.w, %bb.v, %bb.q, %bb.n, %bb.m, %btreeCursor.exit.i
  %.0 = phi i32 [ %.032.i.i, %bb.n ], [ %.032.i.i, %btreeCursor.exit.i ], [ %.032.i.i, %bb.m ], [ 11, %bb.q ], [ %i.bt, %bb.w ], [ 0, %bb.v ], [ 0, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeClearTable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !594
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %sqlite3BtreeEnter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !595
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !595
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !596
  %.not4.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i, label %bb.c, label %sqlite3BtreeEnter.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnter.exit

sqlite3BtreeEnter.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.020.i = load ptr, ptr %i.j, align 8, !tbaa !745 ; 3 uses
  %.not21.i = icmp eq ptr %.020.i, null
  br i1 %.not21.i, label %saveAllCursors.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3BtreeEnter.exit
  %i.k = icmp eq i32 %1, 0
  br i1 %i.k, label %saveAllCursors.exit, label %.preheader

.preheader:                                       ; preds = %.lr.ph.i, %bb.d
  %.022.i = phi ptr [ %.0.i, %bb.d ], [ %.020.i, %.lr.ph.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.022.i, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1018
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %saveAllCursors.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  %.0.i = load ptr, ptr %i.o, align 8, !tbaa !745 ; 2 uses
  %.not.i13 = icmp eq ptr %.0.i, null
  br i1 %.not.i13, label %saveAllCursors.exit.thread, label %.preheader, !llvm.loop !1019

saveAllCursors.exit:                              ; preds = %.preheader, %.lr.ph.i
  %.us-phi.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.022.i, %.preheader ]
  %i.p = tail call fastcc i32 @saveCursorsOnList(ptr noundef %.us-phi.i, i32 noundef %1, ptr noundef null), !inline_history !761 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %saveAllCursors.exit.thread, label %bb.i

saveAllCursors.exit.thread:                       ; preds = %bb.d, %sqlite3BtreeEnter.exit, %saveAllCursors.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !1001
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %invalidateIncrblobCursors.exit, label %bb.e

bb.e:                                             ; preds = %saveAllCursors.exit.thread
  store i8 0, ptr %i.r, align 1, !tbaa !1001
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.013.i = load ptr, ptr %i.u, align 8, !tbaa !745 ; 2 uses
  %.not14.i = icmp eq ptr %.013.i, null
  br i1 %.not14.i, label %invalidateIncrblobCursors.exit, label %.lr.ph.split.i15

.lr.ph.split.i15:                                 ; preds = %bb.e, %bb.h
  %.015.i = phi ptr [ %.0.i16, %bb.h ], [ %.013.i, %bb.e ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !746
  %i.x = and i8 %i.w, 16
  %.not11.i = icmp eq i8 %i.x, 0
  br i1 %.not11.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i15
  store i8 1, ptr %i.r, align 1, !tbaa !1001
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1018
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %.015.i, align 8, !tbaa !839
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.split.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  %.0.i16 = load ptr, ptr %i.ab, align 8, !tbaa !745 ; 2 uses
  %.not.i17 = icmp eq ptr %.0.i16, null
  br i1 %.not.i17, label %invalidateIncrblobCursors.exit, label %.lr.ph.split.i15, !llvm.loop !2903

invalidateIncrblobCursors.exit:                   ; preds = %bb.h, %bb.e, %saveAllCursors.exit.thread
  %i.ac = tail call fastcc i32 @clearDatabasePage(ptr noundef %i.b, i32 noundef %1, i32 noundef 0, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %invalidateIncrblobCursors.exit, %saveAllCursors.exit
  %.0 = phi i32 [ %i.ac, %invalidateIncrblobCursors.exit ], [ %i.p, %saveAllCursors.exit ]
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !594
  %.not.i18 = icmp eq i8 %i.ad, 0
  br i1 %.not.i18, label %sqlite3BtreeLeave.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !595
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !595
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %sqlite3BtreeLeave.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %bb.i, %bb.j, %bb.k
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeOpen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef range(i32 0, 65536) %4, i32 noundef range(i32 256, 0) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca [100 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.e = icmp eq ptr %1, null                     ; 5 uses
  br i1 %i.e, label %.thread320, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !229
  %i.g = icmp eq i8 %i.f, 0                       ; 2 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.381) #60
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread321, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %.thread320, label %bb.d

.thread320:                                       ; preds = %bb.a, %bb.c
  %i.j = getelementptr i8, ptr %2, i64 102
  %.val256 = load i8, ptr %i.j, align 2, !tbaa !1965
  %.not = icmp eq i8 %.val256, 2
  br i1 %.not, label %.thread321, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread320
  %i.k = phi i1 [ true, %.thread320 ], [ false, %bb.c ]
  %i.l = and i32 %5, 128                          ; 2 uses
  %i.m = icmp ne i32 %i.l, 0
  %i.n = lshr exact i32 %i.l, 6
  br label %.thread321

.thread321:                                       ; preds = %bb.b, %.thread320, %bb.d
  %i.o = phi i1 [ %i.m, %bb.d ], [ true, %.thread320 ], [ true, %bb.b ] ; 4 uses
  %i.p = phi i1 [ %i.k, %bb.d ], [ true, %.thread320 ], [ %i.g, %bb.b ] ; 2 uses
  %.pn = phi i32 [ %i.n, %bb.d ], [ 2, %.thread320 ], [ 2, %bb.b ]
  %i.q = or i32 %.pn, %4                          ; 3 uses
  %i.r = and i32 %5, 256
  %.not223 = icmp ne i32 %i.r, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  %or.cond250 = select i1 %.not223, i1 %or.cond, i1 false
  %i.s = and i32 %5, -769
  %i.t = or disjoint i32 %i.s, 512
  %.0183 = select i1 %or.cond250, i32 %i.t, i32 %5 ; 7 uses
  %i.u = tail call fastcc ptr @sqlite3Malloc(i64 noundef 72) ; 41 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %sqlite3MallocZero.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread321
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.v, i8 0, i64 64, i1 false)
  store ptr %2, ptr %i.u, align 8, !tbaa !663
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.u, ptr %i.w, align 8, !tbaa !2904
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 1, ptr %i.x, align 8, !tbaa !2905
  br i1 %i.p, label %sqlite3_free.exit.thread352, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = and i32 %.0183, 64
  %.not225 = icmp eq i32 %i.y, 0
  %or.cond251 = select i1 %i.o, i1 %.not225, i1 false
  %i.z = and i32 %.0183, 131072
  %.not226 = icmp eq i32 %i.z, 0
  %or.cond252 = select i1 %or.cond251, i1 true, i1 %.not226
  br i1 %or.cond252, label %sqlite3_free.exit.thread352, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.e, label %sqlite3Strlen30.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #60
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1073741823
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ad, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !431
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.0.i)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ai) ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  store i8 1, ptr %i.ak, align 1, !tbaa !594
  %.not227 = icmp eq ptr %i.aj, null
  br i1 %.not227, label %bb.i, label %bb.n

bb.i:                                             ; preds = %sqlite3Strlen30.exit
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i259 = icmp eq i32 %i.al, 0
  br i1 %.not.i259, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.u) #59, !inline_history !271
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.as = sub nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.au = add nsw i64 %i.at, -1
  store i64 %i.au, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.av(ptr noundef nonnull %i.u) #59, !inline_history !272
  %i.aw = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i, label %sqlite3MallocZero.exit.thread, label %bb.l

bb.l:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ax(ptr noundef nonnull %i.aw) #59, !inline_history !273
  br label %sqlite3MallocZero.exit.thread

bb.m:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ay(ptr noundef nonnull %i.u) #59, !inline_history !272
  br label %sqlite3MallocZero.exit.thread

bb.n:                                             ; preds = %sqlite3Strlen30.exit
  br i1 %i.o, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = zext nneg i32 %.0.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.az, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.aj, align 1, !tbaa !229
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1537
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 -2147483647, -2147483648) %i.ag, ptr noundef nonnull %i.aj) #59, !inline_history !2906 ; 2 uses
  switch i32 %i.bc, label %bb.q [
    i32 0, label %bb.r
    i32 512, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void @sqlite3_free(ptr noundef nonnull %i.aj)
  tail call void @sqlite3_free(ptr noundef nonnull %i.u)
  br label %sqlite3MallocZero.exit.thread

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.o
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not.i260 = icmp eq i8 %i.bd, 0
  br i1 %.not.i260, label %sqlite3_mutex_enter.exit267, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.r
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.bf = tail call ptr %i.be(i32 noundef 4) #59, !inline_history !197 ; 5 uses
  %.not.i262 = icmp eq ptr %i.bf, null            ; 4 uses
  br i1 %.not.i262, label %sqlite3_mutex_enter.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.bg(ptr noundef nonnull %i.bf) #59, !inline_history !18
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %sqlite3MutexAlloc.exit, %bb.s
  %.pr = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not.i263 = icmp eq i8 %.pr, 0
  br i1 %.not.i263, label %sqlite3_mutex_enter.exit267, label %sqlite3MutexAlloc.exit265

sqlite3MutexAlloc.exit265:                        ; preds = %sqlite3_mutex_enter.exit
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.bi = tail call ptr %i.bh(i32 noundef 2) #59, !inline_history !197 ; 3 uses
  %.not.i266 = icmp eq ptr %i.bi, null
  br i1 %.not.i266, label %sqlite3_mutex_enter.exit267, label %bb.t

bb.t:                                             ; preds = %sqlite3MutexAlloc.exit265
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.bj(ptr noundef nonnull %i.bi) #59, !inline_history !18
  br label %sqlite3_mutex_enter.exit267

sqlite3_mutex_enter.exit267:                      ; preds = %bb.r, %sqlite3_mutex_enter.exit, %sqlite3MutexAlloc.exit265, %bb.t
  %.not.i266342 = phi i1 [ false, %bb.t ], [ true, %sqlite3MutexAlloc.exit265 ], [ true, %sqlite3_mutex_enter.exit ], [ true, %bb.r ] ; 2 uses
  %.0.i264339 = phi ptr [ %i.bi, %bb.t ], [ null, %sqlite3MutexAlloc.exit265 ], [ null, %sqlite3_mutex_enter.exit ], [ null, %bb.r ] ; 2 uses
  %.not.i262327331338 = phi i1 [ %.not.i262, %bb.t ], [ %.not.i262, %sqlite3MutexAlloc.exit265 ], [ %.not.i262, %sqlite3_mutex_enter.exit ], [ true, %bb.r ]
  %.0.i261324332337 = phi ptr [ %i.bf, %bb.t ], [ %i.bf, %sqlite3MutexAlloc.exit265 ], [ %i.bf, %sqlite3_mutex_enter.exit ], [ null, %bb.r ] ; 3 uses
  %.0185439 = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568 ; 2 uses
  %.not229440 = icmp eq ptr %.0185439, null
  br i1 %.not229440, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_mutex_enter.exit267, %bb.ac
  %.0185441 = phi ptr [ %.0185, %bb.ac ], [ %.0185439, %sqlite3_mutex_enter.exit267 ] ; 6 uses
  %i.bk = load ptr, ptr %.0185441, align 8, !tbaa !75 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1351
  %i.bn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(1) %i.bm) #60
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@sqlite3BtreeOpen:bb.a

sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i255.i: ; preds = %sqlite3OsDeviceCharacteristics.exit.i253.i
  %.pre.i256.i = load ptr, ptr %i.gr, align 8, !tbaa !526 ; 2 uses
  %.pre8.i257.i = load ptr, ptr %.pre.i256.i, align 8, !tbaa !475
  %i.my = getelementptr inbounds nuw i8, ptr %.pre8.i257.i, i64 88
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !2079 ; 2 uses
  %.not.i.i.i258.i = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i258.i, label %setSectorSize.exit262.i, label %sqlite3OsSectorSize.exit.i.i259.i

sqlite3OsSectorSize.exit.i.i259.i:                ; preds = %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i255.i
  %i.na = call i32 %i.mz(ptr noundef nonnull %.pre.i256.i) #59, !inline_history !2920
  %.fr.i.i260.i = freeze i32 %i.na                ; 2 uses
  %i.nb = icmp slt i32 %.fr.i.i260.i, 32
  %i.nc = call i32 @llvm.umin.i32(i32 %.fr.i.i260.i, i32 65536)
  %spec.select.i.i261.i = select i1 %i.nb, i32 512, i32 %i.nc
  br label %setSectorSize.exit262.i

setSectorSize.exit262.i:                          ; preds = %sqlite3OsSectorSize.exit.i.i259.i, %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i255.i, %sqlite3OsDeviceCharacteristics.exit.i253.i, %sqlite3PagerSetFlags.exit.i
  %.sink.i252.i = phi i32 [ 512, %sqlite3PagerSetFlags.exit.i ], [ 512, %sqlite3OsDeviceCharacteristics.exit.i253.i ], [ 4096, %sqlite3OsDeviceCharacteristics.exit.sqlite3OsDeviceCharacteristics.exit.thread_crit_edge.i255.i ], [ %spec.select.i.i261.i, %sqlite3OsSectorSize.exit.i.i259.i ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.fz, i64 184
  store i32 %.sink.i252.i, ptr %i.nd, align 8, !tbaa !681
  br i1 %i.dd, label %bb.ck, label %.sink.split.i

bb.ck:                                            ; preds = %setSectorSize.exit262.i
  %i.ne = icmp ne i32 %.120366.i, 0
  %or.cond.i = select i1 %.not.i281, i1 true, i1 %i.ne
  br i1 %or.cond.i, label %.sink.split.i, label %bb.cl

.sink.split.i:                                    ; preds = %bb.ck, %setSectorSize.exit262.i
  %.sink113.i = phi i8 [ 2, %setSectorSize.exit262.i ], [ 4, %bb.ck ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.fz, i64 9
  store i8 %.sink113.i, ptr %i.nf, align 1, !tbaa !667
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split.i, %bb.ck
  %i.ng = getelementptr inbounds nuw i8, ptr %i.fz, i64 264
  store ptr @pageReinit, ptr %i.ng, align 8, !tbaa !2102
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fz, i64 48 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !680
  %.not.i263.i = icmp eq i32 %i.ni, 0
  br i1 %.not.i263.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nj = getelementptr inbounds nuw i8, ptr %i.fz, i64 272
  store ptr @getPageError, ptr %i.nj, align 8, !tbaa !516
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.nk = getelementptr inbounds nuw i8, ptr %i.fz, i64 27
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !741
  %.not5.i264.i = icmp eq i8 %i.nl, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fz, i64 272 ; 2 uses
  br i1 %.not5.i264.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr @getPageMMap, ptr %i.nm, align 8, !tbaa !516
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store ptr @getPageNormal, ptr %i.nm, align 8, !tbaa !516
  br label %bb.cq

sqlite3PagerReadFileheader.exit.thread362:        ; preds = %bb.ao, %bb.av, %bb.au, %sqlite3_mutex_enter.exit.i.i.i, %bb.ch, %sqlite3_mutex_enter.exit.i.i, %sqlite3_mutex_enter.exit.i.i269.i, %bb.ba, %bb.bb, %bb.aw, %bb.ci, %bb.al
  %.2.i.ph = phi i32 [ 7, %bb.ao ], [ %.1207.ph.i, %bb.av ], [ %.1207.ph.i, %bb.au ], [ %.1207.ph.i, %sqlite3_mutex_enter.exit.i.i.i ], [ %.7.ph.i, %bb.ch ], [ %.7.ph.i, %sqlite3_mutex_enter.exit.i.i ], [ 7, %sqlite3_mutex_enter.exit.i.i269.i ], [ 7, %bb.ba ], [ 7, %bb.bb ], [ 7, %bb.aw ], [ %.7.ph.i, %bb.ci ], [ 7, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.thread397

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  store ptr %i.fz, ptr %i.db, align 8, !tbaa !639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !1287 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  store i64 %i.no, ptr %i.np, align 8, !tbaa !2055
  %i.nq = load ptr, ptr %i.gr, align 8, !tbaa !526 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !475 ; 3 uses
  %.not.i.i283 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i283, label %sqlite3PagerSetMmapLimit.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !1522
  %i.nt = icmp sgt i32 %i.ns, 2
  br i1 %i.nt, label %sqlite3OsFileControlHint.exit.i.i, label %sqlite3PagerSetMmapLimit.exit

sqlite3OsFileControlHint.exit.i.i:                ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i64 %i.no, ptr %i.a, align 8, !tbaa !19
  %i.nu = icmp sgt i64 %i.no, 0                   ; 2 uses
  %i.nv = zext i1 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.fz, i64 27
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !741
  %i.nx = load i32, ptr %i.nh, align 8, !tbaa !680
  %.not.i.i.i284 = icmp eq i32 %i.nx, 0
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fz, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.nu, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i284, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.ny, align 8, !tbaa !516
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 80
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !731
  %i.ob = call i32 %i.oa(ptr noundef nonnull %i.nq, i32 noundef 18, ptr noundef nonnull %i.a) #59, !inline_history !2927 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !75
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %bb.cq, %bb.cr, %sqlite3OsFileControlHint.exit.i.i
  %i.oc = phi ptr [ %i.fz, %bb.cq ], [ %i.fz, %bb.cr ], [ %.pre, %sqlite3OsFileControlHint.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.d, i8 0, i64 100, i1 false)
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 72
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !526 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !475 ; 2 uses
  %.not.i285 = icmp eq ptr %i.of, null
  br i1 %.not.i285, label %sqlite3PagerReadFileheader.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !1435
  %i.oi = call i32 %i.oh(ptr noundef nonnull %i.oe, ptr noundef nonnull %i.d, i32 noundef 100, i64 noundef 0) #59, !inline_history !2928 ; 2 uses
  switch i32 %i.oi, label %.thread397 [
    i32 522, label %sqlite3PagerReadFileheader.exit.thread
    i32 0, label %sqlite3PagerReadFileheader.exit.thread
  ]

sqlite3PagerReadFileheader.exit.thread:           ; preds = %bb.cs, %bb.cs, %sqlite3PagerSetMmapLimit.exit
  %i.oj = trunc i32 %i.q to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store i8 %i.oj, ptr %i.ok, align 8, !tbaa !2472
  %i.ol = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %2, ptr %i.ol, align 8, !tbaa !1944
  %i.om = load ptr, ptr %i.db, align 8, !tbaa !75 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 232 ; 2 uses
  store ptr @btreeInvokeBusyHandler, ptr %i.on, align 8, !tbaa !1981
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 240
  store ptr %i.db, ptr %i.oo, align 8, !tbaa !1982
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !526 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !475 ; 2 uses
  %.not.i.i287 = icmp eq ptr %i.or, null
  br i1 %.not.i.i287, label %sqlite3PagerSetBusyHandler.exit, label %bb.ct

bb.ct:                                            ; preds = %sqlite3PagerReadFileheader.exit.thread
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 80
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !731
  %i.ou = call i32 %i.ot(ptr noundef nonnull %i.oq, i32 noundef 15, ptr noundef nonnull %i.on) #59, !inline_history !2929 ; 0 uses
  %.pre461 = load ptr, ptr %i.db, align 8, !tbaa !75
  br label %sqlite3PagerSetBusyHandler.exit

sqlite3PagerSetBusyHandler.exit:                  ; preds = %sqlite3PagerReadFileheader.exit.thread, %bb.ct
  %i.ov = phi ptr [ %i.om, %sqlite3PagerReadFileheader.exit.thread ], [ %.pre461, %bb.ct ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.db, ptr %i.ow, align 8, !tbaa !69
  %i.ox = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.oy = getelementptr i8, ptr %i.ov, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i8 0, i64 16, i1 false)
  %.val = load i8, ptr %i.oy, align 2, !tbaa !1949
  %.not232 = icmp eq i8 %.val, 0
  br i1 %.not232, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %sqlite3PagerSetBusyHandler.exit
  %i.oz = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 8, !tbaa !719
  %i.pb = or i16 %i.pa, 1
  store i16 %i.pb, ptr %i.oz, align 8, !tbaa !719
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %sqlite3PagerSetBusyHandler.exit
  %i.pc = load i16, ptr %i.da, align 16
  %i.pd = zext i16 %i.pc to i32
  %i.pe = shl nuw nsw i32 %i.pd, 8                ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.db, i64 52 ; 4 uses
  store i32 %i.pe, ptr %i.pf, align 4, !tbaa !133
  %i.pg = add nsw i32 %i.pe, -65537
  %or.cond255 = icmp ult i32 %i.pg, -65025
  br i1 %or.cond255, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ph = add nuw nsw i32 %i.pe, 130816
  %i.pi = and i32 %i.ph, %i.pe
  %.not233 = icmp eq i32 %i.pi, 0
  br i1 %.not233, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  store i32 0, ptr %i.pf, align 4, !tbaa !133
  %or.cond5 = or i1 %i.e, %i.o
  br i1 %or.cond5, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pj = getelementptr inbounds nuw i8, ptr %i.db, i64 33
  store i8 0, ptr %i.pj, align 1, !tbaa !744
  %i.pk = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  store i8 0, ptr %i.pk, align 2, !tbaa !693
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.pl = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.pm = load i8, ptr %i.pl, align 4, !tbaa !229
  %i.pn = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.po = load i16, ptr %i.pn, align 8, !tbaa !719
  %i.pp = or i16 %i.po, 2
  store i16 %i.pp, ptr %i.pn, align 8, !tbaa !719
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %6 = load i32, ptr %i.pq, align 4, !tbaa !229
  %i.pr = icmp ne i32 %6, 0
  %i.ps = zext i1 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.db, i64 33
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !744
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %7 = load i32, ptr %i.pu, align 16, !tbaa !229
  %i.pv = icmp ne i32 %7, 0
  %i.pw = zext i1 %i.pv to i8
  %i.px = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  store i8 %i.pw, ptr %i.px, align 2, !tbaa !693
  %i.py = zext i8 %i.pm to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cx, %bb.cy, %bb.cz
  %.0199 = phi i32 [ %i.py, %bb.cz ], [ 0, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %i.pz = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %i.ov, ptr noundef nonnull %i.pf, i32 noundef %.0199) ; 2 uses
  %.not236 = icmp eq i32 %i.pz, 0
  br i1 %.not236, label %bb.db, label %.thread397

bb.db:                                            ; preds = %bb.da
  %i.qa = load i32, ptr %i.pf, align 4, !tbaa !133
  %i.qb = sub i32 %i.qa, %.0199
  %i.qc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store i32 %i.qb, ptr %i.qc, align 8, !tbaa !751
  %i.qd = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store i32 1, ptr %i.qd, align 8, !tbaa !98
  %i.qe = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !594
  %.not237 = icmp eq i8 %i.qf, 0
  br i1 %.not237, label %sqlite3_mutex_leave.exit297.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qg = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not.i288 = icmp eq i8 %i.qg, 0
  br i1 %.not.i288, label %sqlite3_mutex_enter.exit295.thread, label %sqlite3MutexAlloc.exit290

sqlite3MutexAlloc.exit290:                        ; preds = %bb.dc
  %i.qh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.qi = call ptr %i.qh(i32 noundef 2) #59, !inline_history !197 ; 3 uses
  %.pr365 = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not238 = icmp eq i8 %.pr365, 0
  br i1 %.not238, label %bb.dd, label %sqlite3MutexAlloc.exit293

sqlite3MutexAlloc.exit293:                        ; preds = %sqlite3MutexAlloc.exit290
  %i.qj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.qk = call ptr %i.qj(i32 noundef 0) #59, !inline_history !197 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !1942
  %i.qm = icmp eq ptr %i.qk, null
  br i1 %i.qm, label %.thread397, label %bb.dd

bb.dd:                                            ; preds = %sqlite3MutexAlloc.exit293, %sqlite3MutexAlloc.exit290
  %.not.i294 = icmp eq ptr %i.qi, null
  br i1 %.not.i294, label %sqlite3_mutex_enter.exit295.thread, label %bb.de

sqlite3_mutex_enter.exit295.thread:               ; preds = %bb.dd, %bb.dc
  %i.qn = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qo = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !2569
  store ptr %i.db, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  br label %sqlite3_mutex_leave.exit297.thread

bb.de:                                            ; preds = %bb.dd
  %i.qp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.qp(ptr noundef nonnull %i.qi) #59, !inline_history !18
  %i.qq = load ptr, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qr = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !2569
  store ptr %i.db, ptr @sqlite3SharedCacheList, align 8, !tbaa !2568
  %i.qs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.qs(ptr noundef nonnull %i.qi) #59, !inline_history !21
  br label %sqlite3_mutex_leave.exit297.thread

sqlite3_mutex_leave.exit297.thread:               ; preds = %bb.de, %sqlite3_mutex_enter.exit295.thread, %bb.db, %sqlite3_free.exit
  %.1191356 = phi ptr [ %.0.i261324332337, %sqlite3_free.exit ], [ %.1191358, %bb.db ], [ %.1191358, %sqlite3_mutex_enter.exit295.thread ], [ %.1191358, %bb.de ] ; 2 uses
  %.3188 = phi ptr [ %.0185438, %sqlite3_free.exit ], [ %i.db, %bb.db ], [ %i.db, %sqlite3_mutex_enter.exit295.thread ], [ %i.db, %bb.de ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.u, i64 17 ; 4 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !594
  %.not239 = icmp eq i8 %i.qu, 0
  br i1 %.not239, label %sqlite3_mutex_leave.exit297.thread389.thread, label %.preheader429

sqlite3_mutex_leave.exit297.thread389.thread:     ; preds = %sqlite3_mutex_leave.exit297.thread
  store ptr %i.u, ptr %3, align 8, !tbaa !716
  %i.qv = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !69
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !2574
  br label %sqlite3BtreeSchema.exit

.preheader429:                                    ; preds = %sqlite3_mutex_leave.exit297.thread
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !62 ; 2 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph446, label %sqlite3_mutex_leave.exit297.thread389.thread511

.lr.ph446:                                        ; preds = %.preheader429
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !63
  %wide.trip.count = zext nneg i32 %i.ra to i64
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph446, %bb.dl
  %indvars.iv458 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next459, %bb.dl ] ; 2 uses
  %i.re = getelementptr inbounds nuw [32 x i8], ptr %i.rd, i64 %indvars.iv458
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !64 ; 3 uses
  %.not240 = icmp eq ptr %i.rg, null
  br i1 %.not240, label %bb.dl, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 17
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !594
  %.not241 = icmp eq i8 %i.ri, 0
  br i1 %.not241, label %bb.dl, label %.preheader428

.preheader428:                                    ; preds = %bb.dg, %.preheader428
  %.0179 = phi ptr [ %i.rk, %.preheader428 ], [ %i.rg, %bb.dg ] ; 5 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0179, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !2575 ; 2 uses
  %.not242 = icmp eq ptr %i.rk, null
  br i1 %.not242, label %bb.dh, label %.preheader428, !llvm.loop !2930

bb.dh:                                            ; preds = %.preheader428
  %i.rl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !69 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.0179, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !69
  %i.rp = icmp ult ptr %i.rm, %i.ro
  br i1 %i.rp, label %bb.di, label %.preheader

bb.di:                                            ; preds = %bb.dh
  %i.rq = getelementptr inbounds nuw i8, ptr %.0179, i64 40
  %i.rr = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.0179, ptr %i.rr, align 8, !tbaa !1945
  %i.rs = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr null, ptr %i.rs, align 8, !tbaa !2575
  store ptr %i.u, ptr %i.rq, align 8, !tbaa !2575
  br label %sqlite3_mutex_leave.exit297.thread389.thread511

.preheader:                                       ; preds = %bb.dh, %bb.dj
  %.1180 = phi ptr [ %i.ru, %bb.dj ], [ %.0179, %bb.dh ] ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.1180, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !1945 ; 5 uses
  %.not243 = icmp eq ptr %i.ru, null
  br i1 %.not243, label %.critedge.thread, label %bb.dj

bb.dj:                                            ; preds = %.preheader
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !69
  %i.rx = icmp ult ptr %i.rw, %i.rm
  br i1 %i.rx, label %.preheader, label %bb.dk, !llvm.loop !2931

bb.dk:                                            ; preds = %bb.dj
  %i.ry = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ru, ptr %i.ry, align 8, !tbaa !1945
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.dk
  %.sink527 = phi i64 [ 40, %bb.dk ], [ 32, %.preheader ]
  %.sink = phi ptr [ %.1180, %bb.dk ], [ null, %.preheader ]
  %.sink525 = phi ptr [ %i.ru, %bb.dk ], [ %i.u, %.preheader ]
  %.1180.lcssa524.sink = phi ptr [ %i.u, %bb.dk ], [ %.1180, %.preheader ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.1180, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink527
  store ptr %.sink, ptr %i.sa, align 8, !tbaa !716
  %i.sb = getelementptr inbounds nuw i8, ptr %.sink525, i64 40
  store ptr %.1180.lcssa524.sink, ptr %i.sb, align 8, !tbaa !2575
  store ptr %i.u, ptr %i.rz, align 8, !tbaa !1945
  br label %sqlite3_mutex_leave.exit297.thread389.thread511

bb.dl:                                            ; preds = %bb.df, %bb.dg
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3_mutex_leave.exit297.thread389.thread511, label %bb.df, !llvm.loop !2932

.thread397:                                       ; preds = %sqlite3PagerReadFileheader.exit.thread362, %bb.da, %sqlite3MutexAlloc.exit293, %bb.cs
  %.6198387404 = phi i32 [ %i.oi, %bb.cs ], [ %.2.i.ph, %sqlite3PagerReadFileheader.exit.thread362 ], [ %i.pz, %bb.da ], [ 7, %sqlite3MutexAlloc.exit293 ] ; 3 uses
  %i.sc = load ptr, ptr %i.db, align 8, !tbaa !75 ; 2 uses
  %.not248 = icmp eq ptr %i.sc, null
  br i1 %.not248, label %bb.dm, label %.split

.split:                                           ; preds = %.thread397
  call fastcc void @sqlite3PagerClose(ptr noundef nonnull %i.sc, ptr noundef null)
  br label %bb.dm

bb.dm:                                            ; preds = %.thread397, %.split
  %i.sd = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i298 = icmp eq i32 %i.sd, 0
  br i1 %.not.i298, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.se = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i299 = icmp eq ptr %i.se, null
  br i1 %.not.i.i299, label %sqlite3_mutex_enter.exit.i300, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.sf(ptr noundef nonnull %i.se) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i300

sqlite3_mutex_enter.exit.i300:                    ; preds = %bb.do, %bb.dn
  %i.sg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.sh = call i32 %i.sg(ptr noundef nonnull %i.db) #59, !inline_history !271
  %i.si = sext i32 %i.sh to i64
  %i.sj = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.sk = sub nsw i64 %i.sj, %i.si
  store i64 %i.sk, ptr @sqlite3Stat, align 8, !tbaa !19
end_hunk_4
begin_hunk_5_@rbuVfsClose:bb.a
  tail call void %i.ch(ptr noundef nonnull %i.cg) #59, !inline_history !8257
  br label %rbuMainlistRemove.exit

rbuMainlistRemove.exit:                           ; preds = %bb.y, %bb.z
  tail call fastcc void @rbuUnlockShm(ptr noundef nonnull %0)
  %i.ci = load i32, ptr %i.bm, align 8, !tbaa !1522
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %rbuMainlistRemove.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2256 ; 2 uses
  %.not25 = icmp eq ptr %i.cl, null
  br i1 %.not25, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load ptr, ptr %i.bk, align 8, !tbaa !1426
  %i.cn = tail call i32 %i.cl(ptr noundef %i.cm, i32 noundef 0) #59 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %sqlite3_free.exit35
  %i.co = and i32 %i.bi, 8
  %.not23 = icmp eq i32 %i.co, 0
  br i1 %.not23, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1521 ; 2 uses
  %.not24 = icmp eq ptr %i.cq, null
  br i1 %.not24, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !8258
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 384 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1539
  %i.cv = sub nsw i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !1539
  store i64 0, ptr %i.cr, align 8, !tbaa !8258
  br label %bb.af

bb.af:                                            ; preds = %rbuMainlistRemove.exit, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1426 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !475
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2028
  %i.db = tail call i32 %i.da(ptr noundef nonnull %i.cx) #59
  ret i32 %i.db
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsRead(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1521 ; 14 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1360
  switch i32 %i.c, label %.critedge [
    i32 3, label %bb.c
    i32 1, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8259
  %.not.i = icmp eq i32 %i.e, 11
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 5, ptr %i.f, align 8, !tbaa !1369
  br label %rbuCaptureWalRead.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 %2, ptr %i.g, align 8, !tbaa !1434
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1420 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 348 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8260
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not31.i = icmp eq i32 %i.i, 0
  %i.m = shl nsw i32 %i.i, 1
  %spec.select.i = select i1 %.not31.i, i32 128, i32 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1421
  %i.p = tail call i32 @sqlite3_initialize(), !inline_history !1059
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %rbuCaptureWalRead.exit

sqlite3_realloc64.exit.i:                         ; preds = %bb.f
  %i.q = sext i32 %spec.select.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.o, i64 noundef %i.r), !inline_history !1059 ; 2 uses
  %.not32.i = icmp eq ptr %i.s, null
  br i1 %.not32.i, label %rbuCaptureWalRead.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit.i
  store ptr %i.s, ptr %i.n, align 8, !tbaa !1421
  store i32 %spec.select.i, ptr %i.j, align 4, !tbaa !8260
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = add nsw i64 %3, -32
  %i.u = add nsw i32 %2, 24
  %i.v = sext i32 %i.u to i64
  %i.w = sdiv i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 1                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1431
  %i.ab = icmp ult i32 %i.aa, %i.y
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.y, ptr %i.z, align 8, !tbaa !1431
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1421
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !1420 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !1433
  store i32 0, ptr %i.ag, align 4, !tbaa !1422
  %i.ai = add nsw i32 %i.ae, 1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !1420
  br label %rbuCaptureWalRead.exit

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1516
  %i.al = and i32 %i.ak, 524288
  %.not65 = icmp eq i32 %i.al, 0
  br i1 %.not65, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1484
  %.not66 = icmp slt i64 %3, %i.an
  br i1 %.not66, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ao, i1 false)
  br label %bb.t

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1426 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !475
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1435
  %i.au = tail call i32 %i.at(ptr noundef nonnull %i.aq, ptr noundef %1, i32 noundef %2, i64 noundef %3) #59 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1367
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = icmp eq i32 %i.au, 522
  %or.cond = select i1 %i.ax, i1 %i.ay, i1 false
  %i.az = icmp eq i64 %3, 0
  %or.cond3 = and i1 %i.az, %or.cond
  br i1 %or.cond3, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1516
  %i.bc = and i32 %i.bb, 256
  %.not67 = icmp eq i32 %i.bc, 0
  br i1 %.not67, label %rbuCaptureWalRead.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1369
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %rbuCaptureWalRead.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8234 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !475
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1435
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.bh, ptr noundef %1, i32 noundef %2, i64 noundef 0) #59 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %rbuCaptureWalRead.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 55
  %4 = load i32, ptr %i.bn, align 1, !tbaa !229
  %i.br = icmp ne i32 %4, 0
  store i8 0, ptr %i.bn, align 1, !tbaa !229
  store i8 0, ptr %i.bo, align 1, !tbaa !229
  store i8 0, ptr %i.bp, align 1, !tbaa !229
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 0, ptr %i.bt, align 1
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bu, align 1, !tbaa !229
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !8234
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1483
  %i.bz = add i32 %i.by, 1                        ; 4 uses
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = trunc nuw i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bv, align 1, !tbaa !229
  %i.cc = lshr i32 %i.bz, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !229
  %i.cf = lshr i32 %i.bz, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !229
  %i.ci = trunc i32 %i.bz to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !229
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
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !229
  %i.cr = trunc i32 %2 to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !229
  store i8 13, ptr %i.cl, align 1, !tbaa !229
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.critedge, %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ %i.au, %.critedge ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.au, %bb.n ] ; 2 uses
  %i.ct = icmp eq i32 %.0, 0
  %i.cu = icmp eq i64 %3, 0
  %or.cond5 = and i1 %i.cu, %i.ct
  br i1 %or.cond5, label %bb.u, label %rbuCaptureWalRead.exit

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1516
  %i.cx = and i32 %i.cw, 256
  %.not69 = icmp eq i32 %i.cx, 0
  br i1 %.not69, label %rbuCaptureWalRead.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !229
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw i32 %i.da, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !229
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !229
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = or disjoint i32 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !229
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !1483
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !229
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ds, ptr %i.dt, align 8, !tbaa !8261
  br label %rbuCaptureWalRead.exit

rbuCaptureWalRead.exit:                           ; preds = %bb.q, %bb.o, %bb.p, %bb.j, %sqlite3_realloc64.exit.i, %bb.f, %bb.d, %bb.t, %bb.u, %bb.v
  %.1 = phi i32 [ %.0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.u ], [ 795, %bb.d ], [ 0, %bb.j ], [ 7, %sqlite3_realloc64.exit.i ], [ 7, %bb.f ], [ %i.bl, %bb.q ], [ 522, %bb.o ], [ 522, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @rbuVfsWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1521 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1360
  switch i32 %i.c, label %._crit_edge [
    i32 3, label %bb.c
    i32 1, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1516
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1434
  %i.f = sext i32 %i.e to i64
  %i.g = sdiv i64 %3, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1421
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1420
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  store i32 %i.i, ptr %i.p, align 4, !tbaa !1422
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1516 ; 3 uses
  %i.s = and i32 %i.r, 524288
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1484
  %.not48 = icmp slt i64 %3, %i.u
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %2 to i64
  %i.w = add nsw i64 %3, %i.v
  store i64 %i.w, ptr %i.t, align 8, !tbaa !1484
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
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !8258 ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ae = sub nsw i64 %i.aa, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1539
  %i.ah = add nsw i64 %i.ag, %i.ae                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !1539
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !8258
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1538 ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  %i.ak = icmp sle i64 %i.ah, %i.aj
  %or.cond.i.not = select i1 %.not.i, i1 true, i1 %i.ak
  br i1 %or.cond.i.not, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.a, %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1426 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !475
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !683
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.am, ptr noundef %1, i32 noundef %2, i64 noundef %3) #59 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq i64 %3, 0
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1516
  %i.av = and i32 %i.au, 256
  %.not51 = icmp eq i32 %i.av, 0
  br i1 %.not51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !229
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
end_hunk_5
