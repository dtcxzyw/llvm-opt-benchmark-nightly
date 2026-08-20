inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@opal_datatype_commit:bb.a
GET_FIRST_NON_LOOP.exit.loopexit:                 ; preds = %.lr.ph.i
  %i.t = zext nneg i32 %i.p to i64
  br label %GET_FIRST_NON_LOOP.exit

GET_FIRST_NON_LOOP.exit:                          ; preds = %GET_FIRST_NON_LOOP.exit.loopexit, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.t, %GET_FIRST_NON_LOOP.exit.loopexit ]
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.0.lcssa.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %GET_FIRST_NON_LOOP.exit, %bb.b
  %.034 = phi i64 [ %i.w, %GET_FIRST_NON_LOOP.exit ], [ 0, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 1, ptr %i.x, align 2, !tbaa !24
  store i16 0, ptr %i.e, align 8, !tbaa !27
  %i.y = trunc i64 %i.d to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.034, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !30
  %i.ac = icmp eq i64 %i.d, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  br label %bb.bg

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = add i32 %i.af, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 24
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #6 ; 6 uses
  store i32 -1, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 0, ptr %i.ak, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 1, ptr %i.al, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.am, align 8, !tbaa !36
  %i.an = shl i64 %i.d, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !37
  %i.ap = shl i64 %i.ao, 5
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #6 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph471.i

.lr.ph471.i:                                      ; preds = %.outer.backedge.i, %bb.f
  %.0.ph510.i = phi ptr [ %i.aq, %bb.f ], [ %.0.ph.be.i, %.outer.backedge.i ]
  %.sroa.11.0.ph508.i = phi i16 [ 0, %bb.f ], [ %.sroa.11.0.ph.be.i, %.outer.backedge.i ]
  %.sroa.79.0.ph507.i = phi i64 [ 0, %bb.f ], [ %.sroa.79.0466.i, %.outer.backedge.i ]
  %.sroa.104.0.ph506.i = phi i64 [ 0, %bb.f ], [ %.sroa.104.0465.i, %.outer.backedge.i ]
  %.sroa.129.0.ph505.i = phi i64 [ 0, %bb.f ], [ %.sroa.129.0464.i, %.outer.backedge.i ]
  %.0369.ph504.i = phi i64 [ 0, %bb.f ], [ %.0369.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.0374.ph503.i = phi i32 [ 0, %bb.f ], [ %.0374.ph.be.i, %.outer.backedge.i ]
  %.0384.ph502.i = phi i32 [ 0, %bb.f ], [ %.0384.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %.0389.ph501.i = phi i32 [ 0, %bb.f ], [ %.0389.ph.be.i, %.outer.backedge.i ]
  %.0394.ph500.i = phi ptr [ %i.aj, %bb.f ], [ %.0394.ph.be.i, %.outer.backedge.i ] ; 9 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.ad, %.lr.ph471.i
  %i.ay = phi ptr [ %.pre.i, %.lr.ph471.i ], [ %i.ix, %bb.ad ] ; 4 uses
  %.0470.i = phi ptr [ %.0.ph510.i, %.lr.ph471.i ], [ %.7.i, %bb.ad ] ; 18 uses
  %.sroa.11.0468.i = phi i16 [ %.sroa.11.0.ph508.i, %.lr.ph471.i ], [ %.sroa.11.3.i, %bb.ad ] ; 8 uses
  %.sroa.35.0467.i = phi i32 [ 0, %.lr.ph471.i ], [ %.sroa.35.4.i, %bb.ad ] ; 8 uses
  %.sroa.79.0466.i = phi i64 [ %.sroa.79.0.ph507.i, %.lr.ph471.i ], [ %.sroa.79.1.i, %bb.ad ] ; 9 uses
  %.sroa.104.0465.i = phi i64 [ %.sroa.104.0.ph506.i, %.lr.ph471.i ], [ %.sroa.104.1.i, %bb.ad ] ; 9 uses
  %.sroa.129.0464.i = phi i64 [ %.sroa.129.0.ph505.i, %.lr.ph471.i ], [ %.sroa.129.1.i, %bb.ad ] ; 5 uses
  %.0374463.i = phi i32 [ %.0374.ph503.i, %.lr.ph471.i ], [ %.7381.i, %bb.ad ] ; 6 uses
  %.0389462.i = phi i32 [ %.0389.ph501.i, %.lr.ph471.i ], [ %.3392.i, %bb.ad ] ; 9 uses
  %i.az = sext i32 %.0389462.i to i64
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.ay, i64 %i.az ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !21
  switch i16 %i.bc, label %bb.ad [
    i16 1, label %bb.h
    i16 0, label %.lr.ph.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %.not412.i = icmp eq i32 %.sroa.35.0467.i, 0
  br i1 %.not412.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 310, ptr %.0470.i, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0470.i, i64 2
  store i16 %.sroa.11.0468.i, ptr %i.bd, align 2, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.0470.i, i64 8 ; 2 uses
  store i64 %.sroa.79.0466.i, ptr %i.be, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.0470.i, i64 4 ; 2 uses
  store i32 %.sroa.35.0467.i, ptr %i.bf, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.0470.i, i64 16 ; 2 uses
  store i64 %.sroa.104.0465.i, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.0470.i, i64 24
  store i64 %.sroa.129.0464.i, ptr %i.bh, align 8, !tbaa !21
  %i.bi = zext i16 %.sroa.11.0468.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @opal_datatype_basicDatatypes, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.bn = mul i64 %i.bm, %.sroa.79.0466.i
  %i.bo = icmp eq i64 %.sroa.104.0465.i, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i32 %.sroa.35.0467.i to i64        ; 2 uses
  %i.bq = mul i64 %.sroa.79.0466.i, %i.bp
  store i64 %i.bq, ptr %i.be, align 8, !tbaa !21
  %i.br = mul nsw i64 %.sroa.104.0465.i, %i.bp
  store i64 %i.br, ptr %i.bg, align 8, !tbaa !21
  store i32 1, ptr %i.bf, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0470.i, i64 32
  %i.bt = add nsw i32 %.0374463.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1375.i = phi i32 [ %i.bt, %bb.k ], [ %.0374463.i, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %i.bs, %bb.k ], [ %.0470.i, %bb.h ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i16 1, ptr %i.bu, align 2, !tbaa !21
  %i.bv = load i16, ptr %i.ba, align 8, !tbaa !27
  %i.bw = and i16 %i.bv, -257
  store i16 %i.bw, ptr %.1.i, align 8, !tbaa !21
  %i.bx = load i32, ptr %.0394.ph500.i, align 8, !tbaa !32
  %i.by = sub nsw i32 %.1375.i, %i.bx
  %i.bz = add nsw i32 %i.by, 1                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 -1, ptr %i.ch, align 8, !tbaa !21
  %i.ci = add nsw i32 %.0384.ph502.i, -1
  %.not413.i = icmp eq i32 %.0384.ph502.i, 0
  br i1 %.not413.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.ck = load i32, ptr %.0394.ph500.i, align 8, !tbaa !32
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [32 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -28
  store i32 %i.bz, ptr %i.cn, align 4, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %.0394.ph500.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1370.i = phi i64 [ %i.cp, %bb.m ], [ %.0369.ph504.i, %bb.l ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.cr = add nsw i32 %.1375.i, 1
  %i.cs = getelementptr inbounds i8, ptr %.0394.ph500.i, i64 -24
  %i.ct = add nsw i32 %.0389462.i, 1
  br label %.outer.backedge.i

.outer.backedge.i:                                ; preds = %bb.ac, %bb.n
  %.0394.ph.be.i = phi ptr [ %.1395.i, %bb.ac ], [ %i.cs, %bb.n ]
  %.0389.ph.be.i = phi i32 [ %.2391.i, %bb.ac ], [ %i.ct, %bb.n ]
  %.0384.ph.be.i = phi i32 [ %.1385.i, %bb.ac ], [ %i.ci, %bb.n ] ; 2 uses
  %.0374.ph.be.i = phi i32 [ %.5379.i, %bb.ac ], [ %i.cr, %bb.n ] ; 2 uses
  %.0369.ph.be.i = phi i64 [ %i.iw, %bb.ac ], [ %.1370.i, %bb.n ]
  %.sroa.11.0.ph.be.i = phi i16 [ %.sroa.11.1.i, %bb.ac ], [ %.sroa.11.0468.i, %bb.n ]
  %.0.ph.be.i = phi ptr [ %.5.i, %bb.ac ], [ %i.cq, %bb.n ]
  %i.cu = icmp sgt i32 %.0384.ph.be.i, -1
  br i1 %i.cu, label %.lr.ph471.i, label %opal_datatype_optimize_short.exit

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i ], [ 2, %bb.g ] ; 2 uses
  %.05.i.i = phi i32 [ %i.cw, %.lr.ph.i.i ], [ 0, %bb.g ] ; 2 uses
  %.034.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.ba, %bb.g ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32
  %i.cw = add nuw nsw i32 %.05.i.i, 1             ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 34
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !21
  %i.cz = icmp eq i16 %i.cy, 0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %i.cz, label %.lr.ph.i.i, label %GET_FIRST_NON_LOOP.exit.i, !llvm.loop !22

GET_FIRST_NON_LOOP.exit.i:                        ; preds = %.lr.ph.i.i
  %i.da = load i16, ptr %i.ba, align 8, !tbaa !44 ; 3 uses
  %i.db = and i16 %i.da, 16
  %.not404.i = icmp eq i16 %i.db, 0
  br i1 %.not404.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %GET_FIRST_NON_LOOP.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !42 ; 4 uses
  %i.de = add i32 %i.dd, %.0389462.i
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.df ; 2 uses
  store i16 %i.da, ptr %1, align 8, !tbaa !45
  %i.dh = add nsw i32 %i.cw, %.0389462.i
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.ay, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !21 ; 3 uses
  store i16 %i.dl, ptr %i.at, align 2, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !21 ; 2 uses
  %.0361459.i = add nuw i32 %.05.i.i, 2
  %i.do = icmp ult i32 %.0361459.i, %i.dd
  br i1 %i.do, label %.lr.ph.i37, label %.loopexit.i

.lr.ph.i37:                                       ; preds = %bb.o, %bb.q
  %indvars.iv543.i = phi i64 [ %indvars.iv.next544.i, %bb.q ], [ %indvars.iv.i, %bb.o ] ; 2 uses
  %storemerge460.i = phi i64 [ %i.ed, %bb.q ], [ %i.dn, %bb.o ]
  %i.dp = trunc nuw i64 %indvars.iv543.i to i32
  %i.dq = add i32 %.0389462.i, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !47 ; 2 uses
  %i.dv = icmp ne i16 %i.du, 0
  %.not406.i = icmp eq i16 %i.dl, %i.du
  %or.cond.i = select i1 %i.dv, i1 %.not406.i, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i37
  store i16 9, ptr %i.at, align 2, !tbaa !47
  %i.dw = or i16 %i.da, 4096
  store i16 %i.dw, ptr %1, align 8, !tbaa !45
  %i.dx = load i16, ptr %i.f, align 8, !tbaa !19
  %i.dy = or i16 %i.dx, 4096
  store i16 %i.dy, ptr %i.f, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !30
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !48
  %i.ed = add i64 %i.ec, %storemerge460.i         ; 2 uses
  %indvars.iv.next544.i = add i64 %indvars.iv543.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next544.i to i32
  %exitcond = icmp eq i32 %i.dd, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.i, label %.lr.ph.i37, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.q, %bb.o
  %storemerge.lcssa.i = phi i64 [ %i.dn, %bb.o ], [ %i.ed, %bb.q ]
  %i.ee = zext i16 %i.dl to i64
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %bb.p
  %i.ef = phi i64 [ 9, %bb.p ], [ %i.ee, %.loopexit.i ]
  %storemerge.i = phi i64 [ %i.ea, %bb.p ], [ %storemerge.lcssa.i, %.loopexit.i ] ; 3 uses
  store i64 %storemerge.i, ptr %i.au, align 8, !tbaa !48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !50 ; 2 uses
  store i32 %i.eh, ptr %i.av, align 4, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !52 ; 3 uses
  store i64 %i.ej, ptr %i.aw, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !29
  store i64 %i.el, ptr %i.ax, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @opal_datatype_basicDatatypes, i64 %i.ef
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !20
  %i.eq = mul i64 %i.ep, %storemerge.i
  %i.er = icmp eq i64 %i.ej, %i.eq
  br i1 %i.er, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.es = zext i32 %i.eh to i64                   ; 2 uses
  %i.et = mul i64 %storemerge.i, %i.es
  store i64 %i.et, ptr %i.au, align 8, !tbaa !48
  %i.eu = mul nsw i64 %i.ej, %i.es
  store i64 %i.eu, ptr %i.aw, align 8, !tbaa !53
  store i32 1, ptr %i.av, align 4, !tbaa !51
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.ev = add i32 %.0389462.i, 1
  %.2391424.i = add i32 %i.ev, %i.dd
  br label %bb.af

bb.t:                                             ; preds = %GET_FIRST_NON_LOOP.exit.i
  %.not405.i = icmp eq i32 %.sroa.35.0467.i, 0
  br i1 %.not405.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 310, ptr %.0470.i, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %.0470.i, i64 2
  store i16 %.sroa.11.0468.i, ptr %i.ew, align 2, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %.0470.i, i64 8 ; 2 uses
  store i64 %.sroa.79.0466.i, ptr %i.ex, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.0470.i, i64 4 ; 2 uses
  store i32 %.sroa.35.0467.i, ptr %i.ey, align 4, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %.0470.i, i64 16 ; 2 uses
  store i64 %.sroa.104.0465.i, ptr %i.ez, align 8, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %.0470.i, i64 24
  store i64 %.sroa.129.0464.i, ptr %i.fa, align 8, !tbaa !21
  %i.fb = zext i16 %.sroa.11.0468.i to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @opal_datatype_basicDatatypes, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fg = mul i64 %i.ff, %.sroa.79.0466.i
  %i.fh = icmp eq i64 %.sroa.104.0465.i, %i.fg
  br i1 %i.fh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fi = zext i32 %.sroa.35.0467.i to i64        ; 2 uses
  %i.fj = mul i64 %.sroa.79.0466.i, %i.fi
  store i64 %i.fj, ptr %i.ex, align 8, !tbaa !21
  %i.fk = mul nsw i64 %.sroa.104.0465.i, %i.fi
  store i64 %i.fk, ptr %i.ez, align 8, !tbaa !21
  store i32 1, ptr %i.ey, align 4, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %.0470.i, i64 32
  %i.fm = add nsw i32 %.0374463.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2376.i = phi i32 [ %i.fm, %bb.w ], [ %.0374463.i, %bb.t ] ; 3 uses
  %.sroa.11.1.i = phi i16 [ 0, %bb.w ], [ %.sroa.11.0468.i, %bb.t ]
  %.2.i = phi ptr [ %i.fl, %bb.w ], [ %.0470.i, %bb.t ] ; 9 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !42 ; 4 uses
  %i.fp = icmp ult i32 %i.fo, 4
  br i1 %i.fp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !50 ; 3 uses
  %i.fs = icmp ult i32 %i.fr, 3
  br i1 %i.fs, label %.preheader431.i, label %bb.ab

.preheader431.i:                                  ; preds = %bb.y
  %.not511.i = icmp eq i32 %i.fr, 0
  br i1 %.not511.i, label %._crit_edge497.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader431.i
  %i.ft = add nsw i32 %i.cw, %.0389462.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge490.i, %.preheader.lr.ph.i
  %i.fv = phi i32 [ %i.fo, %.preheader.lr.ph.i ], [ %i.ga, %._crit_edge490.i ]
  %i.fw = phi i32 [ %i.fr, %.preheader.lr.ph.i ], [ %i.gb, %._crit_edge490.i ]
  %i.fx = phi i32 [ %i.fo, %.preheader.lr.ph.i ], [ %i.gc, %._crit_edge490.i ]
  %.3496.i = phi ptr [ %.2.i, %.preheader.lr.ph.i ], [ %.4.lcssa.i, %._crit_edge490.i ] ; 2 uses
  %.0357495.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.gf, %._crit_edge490.i ]
  %.0358494.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.ge, %._crit_edge490.i ] ; 2 uses
  %.3377493.i = phi i32 [ %.2376.i, %.preheader.lr.ph.i ], [ %.4378.lcssa.i, %._crit_edge490.i ] ; 2 uses
  %.not512.i = icmp eq i32 %i.fx, 1
  br i1 %.not512.i, label %._crit_edge490.i, label %.lr.ph489.i

._crit_edge497.i:                                 ; preds = %._crit_edge490.i, %.preheader431.i
  %i.fy = phi i32 [ %i.fo, %.preheader431.i ], [ %i.ga, %._crit_edge490.i ]
  %.3377.lcssa.i = phi i32 [ %.2376.i, %.preheader431.i ], [ %.4378.lcssa.i, %._crit_edge490.i ]
  %.3.lcssa.i = phi ptr [ %.2.i, %.preheader431.i ], [ %.4.lcssa.i, %._crit_edge490.i ]
  %i.fz = add i32 %i.fy, 1
  br label %bb.ac

._crit_edge490.loopexit.i:                        ; preds = %bb.aa
  %.pre549.i = load i32, ptr %i.fq, align 8, !tbaa !50
  br label %._crit_edge490.i

._crit_edge490.i:                                 ; preds = %._crit_edge490.loopexit.i, %.preheader.i
  %i.ga = phi i32 [ %i.fv, %.preheader.i ], [ %i.hw, %._crit_edge490.loopexit.i ] ; 2 uses
  %i.gb = phi i32 [ %i.fw, %.preheader.i ], [ %.pre549.i, %._crit_edge490.loopexit.i ] ; 2 uses
  %i.gc = phi i32 [ 1, %.preheader.i ], [ %i.hw, %._crit_edge490.loopexit.i ]
  %.4378.lcssa.i = phi i32 [ %.3377493.i, %.preheader.i ], [ %i.hv, %._crit_edge490.loopexit.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.3496.i, %.preheader.i ], [ %i.hu, %._crit_edge490.loopexit.i ] ; 2 uses
  %i.gd = load i64, ptr %i.fu, align 8, !tbaa !52
  %i.ge = add nsw i64 %i.gd, %.0358494.i
  %i.gf = add nuw i32 %.0357495.i, 1              ; 2 uses
  %i.gg = icmp ult i32 %i.gf, %i.gb
  br i1 %i.gg, label %.preheader.i, label %._crit_edge497.i, !llvm.loop !55

.lr.ph489.i:                                      ; preds = %.preheader.i, %bb.aa
  %indvars.iv546.i = phi i64 [ %indvars.iv.next547.i, %bb.aa ], [ 0, %.preheader.i ] ; 2 uses
  %.4488.i = phi ptr [ %i.hu, %bb.aa ], [ %.3496.i, %.preheader.i ] ; 7 uses
  %.4378486.i = phi i32 [ %i.hv, %bb.aa ], [ %.3377493.i, %.preheader.i ]
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gi = trunc nuw i64 %indvars.iv546.i to i32
  %i.gj = add i32 %i.ft, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %i.gk ; 6 uses
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !45
  %i.gn = or i16 %i.gm, 256
  store i16 %i.gn, ptr %.4488.i, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 2 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !47
  %i.gq = getelementptr inbounds nuw i8, ptr %.4488.i, i64 2
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.4488.i, i64 8 ; 2 uses
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !21
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %.4488.i, i64 4 ; 2 uses
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !53 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.4488.i, i64 16 ; 2 uses
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !54
  %i.hc = add nsw i64 %i.hb, %.0358494.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.4488.i, i64 24
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !21
  %i.he = load i64, ptr %i.gx, align 8, !tbaa !53
  %i.hf = load i64, ptr %i.gr, align 8, !tbaa !48
  %i.hg = load i16, ptr %i.go, align 2, !tbaa !47
  %i.hh = zext i16 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @opal_datatype_basicDatatypes, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !20
  %i.hm = mul i64 %i.hl, %i.hf
  %i.hn = icmp eq i64 %i.he, %i.hm
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph489.i
  %i.ho = load i32, ptr %i.gu, align 4, !tbaa !51
  %i.hp = zext i32 %i.ho to i64
  %i.hq = mul i64 %i.gs, %i.hp
  store i64 %i.hq, ptr %i.gt, align 8, !tbaa !21
  %i.hr = load i32, ptr %i.gu, align 4, !tbaa !51
  %i.hs = zext i32 %i.hr to i64
  %i.ht = mul nsw i64 %i.gy, %i.hs
  store i64 %i.ht, ptr %i.gz, align 8, !tbaa !21
  store i32 1, ptr %i.gw, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph489.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.4488.i, i64 32 ; 2 uses
  %i.hv = add nsw i32 %.4378486.i, 1              ; 2 uses
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
end_hunk_0
