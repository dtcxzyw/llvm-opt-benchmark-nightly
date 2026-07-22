inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@png_read_row:bb.a

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i8 %i.r, 3
  %i.w = zext nneg i8 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, %i.u
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.r to i64
  %i.z = mul nuw nsw i64 %i.y, %i.u
  %i.aa = add nuw nsw i64 %i.z, 7
  %i.ab = lshr i64 %i.aa, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i64 [ %i.x, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !41
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.ak = and i32 %i.aj, 2
  %.not106 = icmp eq i32 %i.ak, 0
  br i1 %.not106, label %bb.am, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  switch i8 %i.am, label %bb.ak [
    i8 0, label %bb.j
    i8 1, label %bb.n
    i8 2, label %bb.s
    i8 3, label %bb.w
    i8 4, label %bb.ab
    i8 5, label %bb.af
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = and i32 %i.af, 7
  %.not119 = icmp eq i32 %i.an, 0
  br i1 %.not119, label %bb.am, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not120 = icmp eq ptr %2, null
  br i1 %.not120, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.n:                                             ; preds = %bb.i
  %i.ao = and i32 %i.af, 7
  %.not117 = icmp eq i32 %i.ao, 0
  br i1 %.not117, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44
  %i.ar = icmp ult i32 %i.aq, 5
  br i1 %i.ar, label %bb.p, label %bb.am

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not118 = icmp eq ptr %2, null
  br i1 %.not118, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.s:                                             ; preds = %bb.i
  %i.as = and i32 %i.af, 7
  %.not114 = icmp eq i32 %i.as, 4
  br i1 %.not114, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not115 = icmp eq ptr %2, null
  %i.at = and i32 %i.af, 4
  %.not116 = icmp eq i32 %i.at, 0
  %or.cond = select i1 %.not115, i1 true, i1 %.not116
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.w:                                             ; preds = %bb.i
  %i.au = and i32 %i.af, 3
  %.not112 = icmp eq i32 %i.au, 0
  br i1 %.not112, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %bb.y, label %bb.am

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not113 = icmp eq ptr %2, null
  br i1 %.not113, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.ab:                                            ; preds = %bb.i
  %i.ay = and i32 %i.af, 3
  %.not109 = icmp eq i32 %i.ay, 2
  br i1 %.not109, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not110 = icmp eq ptr %2, null
  %i.az = and i32 %i.af, 2
  %.not111 = icmp eq i32 %i.az, 0
  %or.cond132 = select i1 %.not110, i1 true, i1 %.not111
  br i1 %or.cond132, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.af:                                            ; preds = %bb.i
  %i.ba = and i32 %i.af, 1
  %.not107 = icmp eq i32 %i.ba, 0
  br i1 %.not107, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = icmp ult i32 %i.bc, 2
  br i1 %i.bd, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not108 = icmp eq ptr %2, null
  br i1 %.not108, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.ak:                                            ; preds = %bb.i
  %i.be = and i32 %i.af, 1
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.am:                                            ; preds = %bb.j, %bb.o, %bb.s, %bb.x, %bb.ab, %bb.ag, %bb.ak, %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = and i32 %i.bh, 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  store i8 -1, ptr %i.bl, align 1, !tbaa !46
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bn = load i64, ptr %i.ad, align 8, !tbaa !39
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  tail call void @png_read_IDAT_data(ptr noundef nonnull %0, ptr noundef %i.bm, i64 noundef %i.bo) #13
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !45 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !46  ; 3 uses
  %i.br = zext nneg i8 %i.bq to i32
  %.not121 = icmp eq i8 %i.bq, 0
  br i1 %.not121, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bs = icmp ult i8 %i.bq, 5
  br i1 %i.bs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  call void @png_read_filter_row(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bw, i32 noundef %i.br) #13
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !45
  %.pre135 = load i64, ptr %i.ad, align 8, !tbaa !39
  %.pre136 = add i64 %.pre135, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ao
  %.pre-phi = phi i64 [ %.pre136, %bb.aq ], [ %i.bo, %bb.ao ]
  %i.bx = phi ptr [ %.pre, %bb.aq ], [ %i.bp, %bb.ao ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %.pre-phi, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !48
  %i.cc = and i32 %i.cb, 4
  %.not122 = icmp eq i32 %i.cc, 0
  br i1 %.not122, label %png_do_read_intrapixel.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !49
  %i.cf = icmp eq i8 %i.ce, 64
  br i1 %i.cf, label %bb.au, label %png_do_read_intrapixel.exit

bb.au:                                            ; preds = %bb.at
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.cj = and i8 %i.ci, 2
  %.not.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i, label %png_do_read_intrapixel.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ck = load i32, ptr %3, align 8, !tbaa !30    ; 7 uses
  %i.cl = load i8, ptr %i.m, align 1, !tbaa !34
  switch i8 %i.cl, label %png_do_read_intrapixel.exit [
    i8 8, label %bb.aw
    i8 16, label %bb.az
  ]

bb.aw:                                            ; preds = %bb.av
  switch i8 %i.ci, label %png_do_read_intrapixel.exit [
    i8 2, label %bb.ay
    i8 6, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i = phi i64 [ 4, %bb.ax ], [ 3, %bb.aw ]    ; 2 uses
  %.not65.i = icmp eq i32 %i.ck, 0
  br i1 %.not65.i, label %png_do_read_intrapixel.exit, label %.lr.ph63.i.lver.orig.preheader

.lr.ph63.i.lver.orig.preheader:                   ; preds = %bb.ay
  %xtraiter = and i32 %i.ck, 1
  %i.cm = icmp eq i32 %i.ck, 1
  br i1 %i.cm, label %.lr.ph63.i.lver.orig.epil.preheader, label %.lr.ph63.i.lver.orig.preheader.new

.lr.ph63.i.lver.orig.preheader.new:               ; preds = %.lr.ph63.i.lver.orig.preheader
  %unroll_iter = and i32 %i.ck, -2
  br label %.lr.ph63.i.lver.orig

.lr.ph63.i.lver.orig:                             ; preds = %.lr.ph63.i.lver.orig, %.lr.ph63.i.lver.orig.preheader.new
  %.04662.i.lver.orig = phi ptr [ %i.ch, %.lr.ph63.i.lver.orig.preheader.new ], [ %i.cy, %.lr.ph63.i.lver.orig ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph63.i.lver.orig.preheader.new ], [ %niter.next.1, %.lr.ph63.i.lver.orig ]
  %i.cn = load i8, ptr %.04662.i.lver.orig, align 1, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !46  ; 2 uses
  %.narrow.i.lver.orig = add i8 %i.cp, %i.cn
  store i8 %.narrow.i.lver.orig, ptr %.04662.i.lver.orig, align 1, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !46
  %.narrow55.i.lver.orig = add i8 %i.cr, %i.cp
  store i8 %.narrow55.i.lver.orig, ptr %i.cq, align 1, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 %.0.i ; 5 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !46  ; 2 uses
  %.narrow.i.lver.orig.1 = add i8 %i.cv, %i.ct
  store i8 %.narrow.i.lver.orig.1, ptr %i.cs, align 1, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !46
  %.narrow55.i.lver.orig.1 = add i8 %i.cx, %i.cv
  store i8 %.narrow55.i.lver.orig.1, ptr %i.cw, align 1, !tbaa !46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.0.i ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %png_do_read_intrapixel.exit.loopexit.unr-lcssa, label %.lr.ph63.i.lver.orig, !llvm.loop !50

bb.az:                                            ; preds = %bb.av
  switch i8 %i.ci, label %png_do_read_intrapixel.exit [
    i8 2, label %bb.bb
    i8 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1.i = phi i64 [ 8, %bb.ba ], [ 6, %bb.az ]
  %.not64.i = icmp eq i32 %i.ck, 0
  br i1 %.not64.i, label %png_do_read_intrapixel.exit, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %bb.bb, %.lr.ph.i.lver.orig
  %.05060.i.lver.orig = phi ptr [ %i.ef, %.lr.ph.i.lver.orig ], [ %i.ch, %bb.bb ] ; 8 uses
  %.05159.i.lver.orig = phi i32 [ %i.ee, %.lr.ph.i.lver.orig ], [ 0, %bb.bb ]
  %i.cz = load i8, ptr %.05060.i.lver.orig, align 1, !tbaa !46
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !46
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !46
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !46
  %i.dm = zext i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dj, %i.dm            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 4 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !46
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 5 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !46
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = add nuw nsw i32 %i.dn, %i.df            ; 2 uses
  %i.dx = add nuw nsw i32 %i.dv, %i.dn            ; 2 uses
  %i.dy = lshr i32 %i.dw, 8
  %i.dz = trunc i32 %i.dy to i8
  store i8 %i.dz, ptr %.05060.i.lver.orig, align 1, !tbaa !46
  %i.ea = trunc i32 %i.dw to i8
  store i8 %i.ea, ptr %i.dc, align 1, !tbaa !46
  %i.eb = lshr i32 %i.dx, 8
  %i.ec = trunc i32 %i.eb to i8
  store i8 %i.ec, ptr %i.do, align 1, !tbaa !46
  %i.ed = trunc i32 %i.dx to i8
  store i8 %i.ed, ptr %i.ds, align 1, !tbaa !46
  %i.ee = add nuw i32 %.05159.i.lver.orig, 1      ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.05060.i.lver.orig, i64 %.1.i
  %exitcond.not.i.lver.orig = icmp eq i32 %i.ee, %i.ck
  br i1 %exitcond.not.i.lver.orig, label %png_do_read_intrapixel.exit, label %.lr.ph.i.lver.orig, !llvm.loop !52

png_do_read_intrapixel.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph63.i.lver.orig
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %png_do_read_intrapixel.exit, label %.lr.ph63.i.lver.orig.epil.preheader

.lr.ph63.i.lver.orig.epil.preheader:              ; preds = %png_do_read_intrapixel.exit.loopexit.unr-lcssa, %.lr.ph63.i.lver.orig.preheader
  %.04662.i.lver.orig.epil.init = phi ptr [ %i.ch, %.lr.ph63.i.lver.orig.preheader ], [ %i.cy, %png_do_read_intrapixel.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod156 = trunc i32 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.eg = load i8, ptr %.04662.i.lver.orig.epil.init, align 1, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig.epil.init, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !46  ; 2 uses
  %.narrow.i.lver.orig.epil = add i8 %i.ei, %i.eg
  store i8 %.narrow.i.lver.orig.epil, ptr %.04662.i.lver.orig.epil.init, align 1, !tbaa !46
  %i.ej = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig.epil.init, i64 2 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !46
  %.narrow55.i.lver.orig.epil = add i8 %i.ek, %i.ei
  store i8 %.narrow55.i.lver.orig.epil, ptr %i.ej, align 1, !tbaa !46
  br label %png_do_read_intrapixel.exit

png_do_read_intrapixel.exit:                      ; preds = %.lr.ph.i.lver.orig, %.lr.ph63.i.lver.orig.epil.preheader, %png_do_read_intrapixel.exit.loopexit.unr-lcssa, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !42
  %.not123 = icmp eq i32 %i.em, 0
  br i1 %.not123, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %png_do_read_intrapixel.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !53
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %png_do_read_intrapixel.exit
  call void @png_do_read_transformations(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 631 ; 2 uses
end_hunk_0
