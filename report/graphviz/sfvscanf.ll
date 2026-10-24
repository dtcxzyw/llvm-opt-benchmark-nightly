Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfvscanf?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@sfvscanf:bb.a
  %i.ag = call i32 @ungetc(i32 noundef %i.ad, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.f:                                             ; preds = %.backedge878
  %i.ah = load i8, ptr %i.p, align 1, !tbaa !8
  switch i8 %i.ah, label %.backedge.preheader [
    i8 37, label %bb.g
    i8 0, label %.critedge29
    i8 42, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.1545, i64 2
  br label %gv_isspace.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.1545, i64 2
  br label %.backedge.preheader

.backedge.preheader:                              ; preds = %bb.f, %bb.h
  %.1588.ph = phi i32 [ 0, %bb.f ], [ 4096, %bb.h ]
  %.4548.ph = phi ptr [ %i.p, %bb.f ], [ %i.aj, %bb.h ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.preheader
  %.0622 = phi i32 [ 10, %.backedge.preheader ], [ %.0622.be, %.backedge.backedge ] ; 18 uses
  %.0599 = phi i32 [ 0, %.backedge.preheader ], [ %.0599.be, %.backedge.backedge ] ; 18 uses
  %.0594 = phi i64 [ -1, %.backedge.preheader ], [ %.0594.be, %.backedge.backedge ] ; 10 uses
  %.1588 = phi i32 [ %.1588.ph, %.backedge.preheader ], [ %.1588.be, %.backedge.backedge ] ; 25 uses
  %.0584 = phi i32 [ 0, %.backedge.preheader ], [ %.0584.be, %.backedge.backedge ] ; 26 uses
  %.0552 = phi ptr [ null, %.backedge.preheader ], [ %.0552.be, %.backedge.backedge ] ; 13 uses
  %.0550 = phi i64 [ 0, %.backedge.preheader ], [ %.0550.be, %.backedge.backedge ] ; 14 uses
  %.4548 = phi ptr [ %.4548.ph, %.backedge.preheader ], [ %.4548.be, %.backedge.backedge ] ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.4548, i64 1 ; 31 uses
  %i.al = load i8, ptr %.4548, align 1, !tbaa !8  ; 4 uses
  %i.am = sext i8 %i.al to i32                    ; 11 uses
  switch i8 %i.al, label %bb.ai [
    i8 40, label %.outer
    i8 35, label %bb.r
    i8 46, label %bb.s
    i8 48, label %bb.x
    i8 49, label %bb.x
    i8 50, label %bb.x
    i8 51, label %bb.x
    i8 52, label %bb.x
    i8 53, label %bb.x
    i8 54, label %bb.x
    i8 55, label %bb.x
    i8 56, label %bb.x
    i8 57, label %bb.x
    i8 73, label %bb.y
    i8 108, label %bb.ac
    i8 104, label %bb.ad
    i8 76, label %bb.ae
    i8 106, label %bb.af
    i8 122, label %bb.ag
    i8 116, label %bb.ah
  ]

.outer:                                           ; preds = %.backedge, %.outer.backedge
  %.0573.ph = phi i32 [ %.0573.ph.be, %.outer.backedge ], [ 1, %.backedge ] ; 2 uses
  %.5549.ph = phi ptr [ %i.an, %.outer.backedge ], [ %i.ak, %.backedge ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.i
  %.5549 = phi ptr [ %i.an, %bb.i ], [ %.5549.ph, %.outer ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.5549, i64 1 ; 7 uses
  %i.ao = load i8, ptr %.5549, align 1, !tbaa !8
  switch i8 %i.ao, label %bb.i [
    i8 0, label %.backedge.backedge
    i8 40, label %bb.j
    i8 41, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %.0573.ph, 1
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %.0573.ph, -1               ; 2 uses
  %.not723 = icmp eq i32 %i.aq, 0
  br i1 %.not723, label %bb.l, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.k, %bb.j
  %.0573.ph.be = phi i32 [ %i.aq, %bb.k ], [ %i.ap, %bb.j ]
  br label %.outer

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !8
  %.not724 = icmp eq i8 %i.ar, 42
  br i1 %.not724, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = ptrtoint ptr %.5549 to i64
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.as, %i.at
  br label %.backedge.backedge

bb.n:                                             ; preds = %bb.l
  store ptr %i.an, ptr %i.c, align 8, !tbaa !28
  store i32 40, ptr %i.e, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.av = load ptr, ptr %1, align 8, !tbaa !30
  %i.aw = call i32 %i.av(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.critedge29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %2, align 16, !tbaa !8    ; 4 uses
  %.not725 = icmp eq ptr %i.ay, null
  br i1 %.not725, label %.backedge.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i64, ptr %i.f, align 8, !tbaa !31
  %i.ba = shl i64 %i.az, 32
  %i.bb = ashr exact i64 %i.ba, 32                ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %.backedge.backedge

bb.q:                                             ; preds = %bb.p
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #9
  br label %.backedge.backedge

bb.r:                                             ; preds = %.backedge
  %i.be = or i32 %.1588, 1024
  br label %.backedge.backedge

bb.s:                                             ; preds = %.backedge
  %i.bf = add nsw i32 %.0584, 1                   ; 4 uses
  %i.bg = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = add nsw i32 %i.bh, -48
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bl = icmp eq i8 %i.bg, 42
  br i1 %i.bl, label %bb.v, label %.backedge.backedge

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  %i.bo = call ptr %i.bm(ptr noundef nonnull %i.bn) #8 ; 2 uses
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !28
  store i32 46, ptr %i.e, align 8, !tbaa !29
  %i.bp = sext i32 %i.bf to i64
  store i64 %i.bp, ptr %i.f, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.bq = load ptr, ptr %1, align 8, !tbaa !30
  %i.br = call i32 %i.bq(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.critedge29, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i32, ptr %2, align 16, !tbaa !8
  %spec.store.select1 = call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  br label %.loopexit855

bb.x:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %bb.t
  %.0593 = phi i32 [ %i.bh, %bb.t ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ], [ %i.am, %.backedge ]
  %.1585 = phi i32 [ %i.bf, %bb.t ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ], [ %.0584, %.backedge ] ; 2 uses
  %.6 = phi ptr [ %i.bk, %bb.t ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ], [ %i.ak, %.backedge ] ; 3 uses
  %i.bu = add nsw i32 %.0593, -48                 ; 2 uses
  %i.bv = load i8, ptr %.6, align 1, !tbaa !8
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = icmp ult i32 %i.bx, 10
  br i1 %i.by, label %.lr.ph999, label %.loopexit855

.lr.ph999:                                        ; preds = %bb.x, %.lr.ph999
  %i.bz = phi i32 [ %i.cf, %.lr.ph999 ], [ %i.bx, %bb.x ]
  %.7998 = phi ptr [ %i.cc, %.lr.ph999 ], [ %.6, %bb.x ]
  %.1574997 = phi i32 [ %i.cb, %.lr.ph999 ], [ %i.bu, %bb.x ]
  %i.ca = mul nsw i32 %.1574997, 10
  %i.cb = add nsw i32 %i.bz, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.7998, i64 1 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = sext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 10
  br i1 %i.cg, label %.lr.ph999, label %.loopexit855, !llvm.loop !13

.loopexit855:                                     ; preds = %.lr.ph999, %bb.x, %bb.w
  %.2586 = phi i32 [ %i.bf, %bb.w ], [ %.1585, %bb.x ], [ %.1585, %.lr.ph999 ] ; 3 uses
  %.2575 = phi i32 [ %spec.store.select1, %bb.w ], [ %i.bu, %bb.x ], [ %i.cb, %.lr.ph999 ] ; 2 uses
  %.8 = phi ptr [ %i.bo, %bb.w ], [ %.6, %bb.x ], [ %i.cc, %.lr.ph999 ]
  %or.cond = icmp ult i32 %.2586, 2
  %.not = icmp eq i32 %.2586, 2
  %.1623 = select i1 %.not, i32 %.2575, i32 %.0622
  %.1600 = select i1 %or.cond, i32 %.2575, i32 %.0599
  br label %.backedge.backedge

bb.y:                                             ; preds = %.backedge
  %i.ch = and i32 %.1588, -1695801
  %i.ci = or disjoint i32 %i.ch, 524288           ; 3 uses
  %i.cj = load i8, ptr %i.ak, align 1, !tbaa !8   ; 3 uses
  %3 = sext i8 %i.cj to i32
  %4 = add nsw i32 %3, -48
  %i.ck = icmp ult i32 %4, 10
  br i1 %i.ck, label %.lr.ph, label %bb.z

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %i.cl = phi i8 [ %i.cq, %.lr.ph ], [ %i.cj, %bb.y ]
  %.9995 = phi ptr [ %i.cp, %.lr.ph ], [ %i.ak, %bb.y ]
  %.1595994 = phi i64 [ %i.co, %.lr.ph ], [ 0, %bb.y ]
  %i.cm = mul nsw i64 %.1595994, 10
  %5 = sext i8 %i.cl to i64
  %i.cn = add i64 %i.cm, -48
  %i.co = add i64 %i.cn, %5                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.9995, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8   ; 2 uses
  %6 = sext i8 %i.cq to i32
  %7 = add nsw i32 %6, -48
  %i.cr = icmp ult i32 %7, 10
  br i1 %i.cr, label %.lr.ph, label %.backedge.backedge, !llvm.loop !14

bb.z:                                             ; preds = %bb.y
  %i.cs = icmp eq i8 %i.cj, 42
  br i1 %i.cs, label %bb.aa, label %.backedge.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  %i.cv = call ptr %i.ct(ptr noundef nonnull %i.cu) #8 ; 2 uses
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !28
  store i32 73, ptr %i.e, align 8, !tbaa !29
  store i64 4, ptr %i.f, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.cw = load ptr, ptr %1, align 8, !tbaa !30
  %i.cx = call i32 %i.cw(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.critedge29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load i32, ptr %2, align 16, !tbaa !8
  %i.da = sext i32 %i.cz to i64
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.lr.ph, %bb.i, %bb.ab, %bb.z, %bb.m, %bb.q, %bb.p, %bb.o, %bb.r, %.loopexit855, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.u
  %.0622.be = phi i32 [ %.0622, %bb.z ], [ %.0622, %bb.i ], [ %.0622, %bb.ah ], [ %.0622, %bb.ab ], [ %.0622, %bb.r ], [ %.1623, %.loopexit855 ], [ %.0622, %bb.u ], [ %.0622, %bb.m ], [ %.0622, %bb.ac ], [ %.0622, %bb.ad ], [ %.0622, %bb.ae ], [ %.0622, %bb.af ], [ %.0622, %bb.ag ], [ %.0622, %bb.o ], [ %.0622, %bb.p ], [ %.0622, %bb.q ], [ %.0622, %.lr.ph ]
  %.0599.be = phi i32 [ %.0599, %bb.z ], [ %.0599, %bb.i ], [ %.0599, %bb.ah ], [ %.0599, %bb.ab ], [ %.0599, %bb.r ], [ %.1600, %.loopexit855 ], [ %.0599, %bb.u ], [ %.0599, %bb.m ], [ %.0599, %bb.ac ], [ %.0599, %bb.ad ], [ %.0599, %bb.ae ], [ %.0599, %bb.af ], [ %.0599, %bb.ag ], [ %.0599, %bb.o ], [ %.0599, %bb.p ], [ %.0599, %bb.q ], [ %.0599, %.lr.ph ]
  %.0594.be = phi i64 [ 0, %bb.z ], [ %.0594, %bb.i ], [ -1, %bb.ah ], [ %i.da, %bb.ab ], [ %.0594, %bb.r ], [ %.0594, %.loopexit855 ], [ %.0594, %bb.u ], [ %.0594, %bb.m ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.ag ], [ %.0594, %bb.o ], [ %.0594, %bb.p ], [ %.0594, %bb.q ], [ %i.co, %.lr.ph ]
  %.1588.be = phi i32 [ %i.ci, %bb.z ], [ %.1588, %bb.i ], [ %i.dq, %bb.ah ], [ %i.ci, %bb.ab ], [ %i.be, %bb.r ], [ %.1588, %.loopexit855 ], [ %.1588, %bb.u ], [ %.1588, %bb.m ], [ %.2589, %bb.ac ], [ %.3590, %bb.ad ], [ %i.dk, %bb.ae ], [ %i.dm, %bb.af ], [ %i.do, %bb.ag ], [ %.1588, %bb.o ], [ %.1588, %bb.p ], [ %.1588, %bb.q ], [ %i.ci, %.lr.ph ]
  %.0584.be = phi i32 [ %.0584, %bb.z ], [ %.0584, %bb.i ], [ %.0584, %bb.ah ], [ %.0584, %bb.ab ], [ %.0584, %bb.r ], [ %.2586, %.loopexit855 ], [ %i.bf, %bb.u ], [ %.0584, %bb.m ], [ %.0584, %bb.ac ], [ %.0584, %bb.ad ], [ %.0584, %bb.ae ], [ %.0584, %bb.af ], [ %.0584, %bb.ag ], [ %.0584, %bb.o ], [ %.0584, %bb.p ], [ %.0584, %bb.q ], [ %.0584, %.lr.ph ]
  %.0552.be = phi ptr [ %.0552, %bb.z ], [ null, %bb.i ], [ %.0552, %bb.ah ], [ %.0552, %bb.ab ], [ %.0552, %bb.r ], [ %.0552, %.loopexit855 ], [ %.0552, %bb.u ], [ %i.ak, %bb.m ], [ %.0552, %bb.ac ], [ %.0552, %bb.ad ], [ %.0552, %bb.ae ], [ %.0552, %bb.af ], [ %.0552, %bb.ag ], [ null, %bb.o ], [ %i.ay, %bb.p ], [ %i.ay, %bb.q ], [ %.0552, %.lr.ph ]
  %.0550.be = phi i64 [ %.0550, %bb.z ], [ 0, %bb.i ], [ %.0550, %bb.ah ], [ %.0550, %bb.ab ], [ %.0550, %bb.r ], [ %.0550, %.loopexit855 ], [ %.0550, %bb.u ], [ %i.au, %bb.m ], [ %.0550, %bb.ac ], [ %.0550, %bb.ad ], [ %.0550, %bb.ae ], [ %.0550, %bb.af ], [ %.0550, %bb.ag ], [ %.0550, %bb.o ], [ %i.bb, %bb.p ], [ %i.bd, %bb.q ], [ %.0550, %.lr.ph ]
  %.4548.be = phi ptr [ %i.ak, %bb.z ], [ %i.ak, %bb.i ], [ %i.ak, %bb.ah ], [ %i.cv, %bb.ab ], [ %i.ak, %bb.r ], [ %.8, %.loopexit855 ], [ %i.ak, %bb.u ], [ %i.an, %bb.m ], [ %.11, %bb.ac ], [ %.12, %bb.ad ], [ %i.ak, %bb.ae ], [ %i.ak, %bb.af ], [ %i.ak, %bb.ag ], [ %i.an, %bb.o ], [ %i.an, %bb.p ], [ %i.an, %bb.q ], [ %i.cp, %.lr.ph ]
  br label %.backedge

bb.ac:                                            ; preds = %.backedge
  %i.db = and i32 %.1588, -1695801
  %i.dc = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.dd = icmp eq i8 %i.dc, 108                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  %.2589.v = select i1 %i.dd, i32 32768, i32 16384
  %.2589 = or disjoint i32 %.2589.v, %i.db
  %.11 = select i1 %i.dd, ptr %i.de, ptr %i.ak
  br label %.backedge.backedge

bb.ad:                                            ; preds = %.backedge
  %i.df = and i32 %.1588, -1695801
  %i.dg = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.dh = icmp eq i8 %i.dg, 104                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.4548, i64 2
  %.3590.v = select i1 %i.dh, i32 8, i32 8192
  %.3590 = or disjoint i32 %.3590.v, %i.df
  %.12 = select i1 %i.dh, ptr %i.di, ptr %i.ak
  br label %.backedge.backedge

bb.ae:                                            ; preds = %.backedge
  %i.dj = and i32 %.1588, -1695801
  %i.dk = or disjoint i32 %i.dj, 65536
  br label %.backedge.backedge

bb.af:                                            ; preds = %.backedge
  %i.dl = and i32 %.1588, -1695801
  %i.dm = or disjoint i32 %i.dl, 1048576
  br label %.backedge.backedge

bb.ag:                                            ; preds = %.backedge
  %i.dn = and i32 %.1588, -1695801
  %i.do = or disjoint i32 %i.dn, 32
  br label %.backedge.backedge

bb.ah:                                            ; preds = %.backedge
  %i.dp = and i32 %.1588, -1695801
  %i.dq = or disjoint i32 %i.dp, 16
  br label %.backedge.backedge

bb.ai:                                            ; preds = %.backedge
  %i.dr = and i32 %.1588, 1171512
  %.not726 = icmp eq i32 %i.dr, 0
  br i1 %.not726, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = sext i8 %i.al to i64
  %i.dt = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 920), i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = and i32 %i.dv, 3
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = icmp eq i8 %i.al, 110
  %or.cond4 = or i1 %i.dy, %i.dx
  br i1 %or.cond4, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.dz = and i32 %.1588, 49152
  %or.cond759 = icmp eq i32 %i.dz, 0
  br i1 %or.cond759, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ea = and i32 %.1588, 8192
  %.not732 = icmp eq i32 %i.ea, 0
  br i1 %.not732, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.eb = and i32 %.1588, 8
  %.not733 = icmp eq i32 %i.eb, 0
  br i1 %.not733, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.ec = and i32 %.1588, 1048576
  %.not734 = icmp eq i32 %i.ec, 0
  br i1 %.not734, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ed = and i32 %.1588, 48
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = select i1 %i.ee, i64 -1, i64 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.aj
  %i.eg = and i32 %i.dv, 4
  %.not727 = icmp eq i32 %i.eg, 0
  br i1 %.not727, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eh = and i32 %.1588, 65536
  %.not728 = icmp eq i32 %i.eh, 0
  %i.ei = and i32 %.1588, 49152
  %.not729 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not729, i64 -1, i64 8
  %i.ek = select i1 %.not728, i64 %i.ej, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.al, %bb.ao, %bb.an, %bb.am, %bb.aq, %bb.ap, %bb.ai
  %.3597 = phi i64 [ %.0594, %bb.ai ], [ %i.ek, %bb.aq ], [ %.0594, %bb.ap ], [ 8, %bb.ak ], [ 8, %bb.an ], [ 2, %bb.al ], [ 1, %bb.am ], [ %i.ef, %bb.ao ]
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !28
  store i32 %i.am, ptr %i.e, align 8, !tbaa !29
  store i64 %.3597, ptr %i.f, align 8, !tbaa !31
  %i.el = and i32 %.1588, 2097144
  store i32 %i.el, ptr %i.g, align 8, !tbaa !34
  store i32 %.0599, ptr %i.h, align 4, !tbaa !35
  store i32 0, ptr %i.i, align 8, !tbaa !36
  store i32 %.0622, ptr %i.j, align 4, !tbaa !37
  store ptr %.0552, ptr %i.k, align 8, !tbaa !38
  store i64 %.0550, ptr %i.l, align 8, !tbaa !39
  %i.em = load ptr, ptr %1, align 8, !tbaa !30
  %i.en = call i32 %i.em(ptr noundef nonnull %2, ptr noundef nonnull %1) #8 ; 3 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %.critedge29, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ep = icmp eq i32 %i.en, 0
  br i1 %i.ep, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !28  ; 22 uses
  %i.er = load i32, ptr %i.e, align 8, !tbaa !29  ; 10 uses
  %i.es = load i64, ptr %i.f, align 8, !tbaa !31  ; 5 uses
  %i.et = load ptr, ptr %2, align 16              ; 12 uses
  %i.eu = sext i32 %i.er to i64                   ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 920), i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %.backedge878.backedge, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ey = add nsw i32 %i.en, %.1558.ph876
  %i.ez = load i32, ptr %i.g, align 8, !tbaa !34
  %i.fa = lshr i32 %i.ez, 12
  %i.fb = and i32 %i.fa, 1
  %i.fc = xor i32 %i.fb, 1
  %spec.select761 = add nsw i32 %i.fc, %.1577.ph875
  br label %.outer874, !llvm.loop !12

bb.av:                                            ; preds = %bb.at
  %i.fd = load i32, ptr %i.j, align 4, !tbaa !37  ; 4 uses
  %i.fe = load i32, ptr %i.g, align 8, !tbaa !34  ; 3 uses
  %i.ff = icmp eq i32 %i.er, 110
  br i1 %i.ff, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  switch i64 %i.es, label %bb.ba [
    i64 64, label %bb.ax
    i64 8, label %bb.ax
    i64 0, label %bb.ax
    i64 2, label %bb.ay
    i64 1, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw
  store i64 %i.o, ptr %i.et, align 8, !tbaa !40
  br label %.backedge878.backedge

.backedge878.backedge:                            ; preds = %bb.ax, %bb.az, %bb.ba, %bb.ay, %bb.at
  br label %.backedge878, !llvm.loop !12

bb.ay:                                            ; preds = %bb.aw
  store i16 %i.n, ptr %i.et, align 2, !tbaa !42
  br label %.backedge878.backedge

bb.az:                                            ; preds = %bb.aw
  store i8 %i.m, ptr %i.et, align 1, !tbaa !8
end_hunk_0
