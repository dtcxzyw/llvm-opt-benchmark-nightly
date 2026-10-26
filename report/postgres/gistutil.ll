Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistutil?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@gistgetadjusted:bb.a
  %5 = alloca %union.anon, align 8                ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca [32 x %struct.GISTENTRY], align 16  ; 4 uses
  %7 = alloca [32 x %struct.GISTENTRY], align 16  ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = alloca [32 x i64], align 16              ; 4 uses
  %i.g = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp sgt i16 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4648
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 13864
  br label %bb.b

bb.b:                                             ; preds = %gistdentryinit.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %gistdentryinit.exit.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.s = call fastcc i64 @index_getattr(ptr noundef %1, i32 noundef %i.r, ptr noundef %i.p, ptr noundef nonnull %i.q)
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %indvars.iv.i ; 9 uses
  %i.u = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 26 ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.s, ptr %i.t, align 16
  store ptr %0, ptr %i.w, align 8
  store ptr null, ptr %i.x, align 16
  store i16 0, ptr %i.y, align 8
  store i8 0, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %gistdentryinit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = ptrtoint ptr %i.t to i64
  %i.ag = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.aa, i32 noundef %i.ae, i64 noundef %i.af) #11
  %i.ah = inttoptr i64 %i.ag to ptr               ; 6 uses
  %.not39.i.i = icmp eq ptr %i.t, %i.ah
  br i1 %.not39.i.i, label %gistdentryinit.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.t, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.w, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.x, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ao = load i16, ptr %i.an, align 8
  store i16 %i.ao, ptr %i.y, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 26
  %i.aq = load i8, ptr %i.ap, align 2, !range !8, !noundef !9
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %i.t, align 16
  store ptr %0, ptr %i.w, align 8
  store ptr null, ptr %i.x, align 16
  store i16 0, ptr %i.y, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i8 [ %i.aq, %bb.e ], [ 0, %bb.f ]
  store i8 %.sink.i.i, ptr %i.z, align 2
  br label %gistdentryinit.exit.i

gistdentryinit.exit.i:                            ; preds = %.sink.split.i.i, %bb.d, %bb.c
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = sext i16 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.b, label %gistDeCompressAtt.exit, !llvm.loop !2

gistDeCompressAtt.exit:                           ; preds = %gistdentryinit.exit.i
  %i.aw = icmp sgt i16 %i.at, 0
  br i1 %i.aw, label %.lr.ph.i32, label %._crit_edge.thread

.lr.ph.i32:                                       ; preds = %gistDeCompressAtt.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4648
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 13864
  br label %bb.g

bb.g:                                             ; preds = %gistdentryinit.exit.i39, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i34, %gistdentryinit.exit.i39 ] ; 5 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i33 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i34 to i32
  %i.bd = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull %i.bb)
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %indvars.iv.i33 ; 9 uses
  %i.bf = load i8, ptr %i.bb, align 1, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 26 ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.bd, ptr %i.be, align 16
  store ptr %0, ptr %i.bh, align 8
  store ptr null, ptr %i.bi, align 16
  store i16 0, ptr %i.bj, align 8
  store i8 0, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %indvars.iv.i33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  %.not.i.i35 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i35, label %gistdentryinit.exit.i39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i33
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = ptrtoint ptr %i.be to i64
  %i.br = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.bl, i32 noundef %i.bp, i64 noundef %i.bq) #11
  %i.bs = inttoptr i64 %i.br to ptr               ; 6 uses
  %.not39.i.i36 = icmp eq ptr %i.be, %i.bs
  br i1 %.not39.i.i36, label %gistdentryinit.exit.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load i64, ptr %i.bs, align 8
  store i64 %i.bt, ptr %i.be, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %i.bv, ptr %i.bh, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.bi, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bz = load i16, ptr %i.by, align 8
  store i16 %i.bz, ptr %i.bj, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 26
  %i.cb = load i8, ptr %i.ca, align 2, !range !8, !noundef !9
  br label %.sink.split.i.i37

bb.k:                                             ; preds = %bb.g
  store i64 0, ptr %i.be, align 16
  store ptr %0, ptr %i.bh, align 8
  store ptr null, ptr %i.bi, align 16
  store i16 0, ptr %i.bj, align 8
  br label %.sink.split.i.i37

.sink.split.i.i37:                                ; preds = %bb.k, %bb.j
  %.sink.i.i38 = phi i8 [ %i.cb, %bb.j ], [ 0, %bb.k ]
  store i8 %.sink.i.i38, ptr %i.bk, align 2
  br label %gistdentryinit.exit.i39

gistdentryinit.exit.i39:                          ; preds = %.sink.split.i.i37, %bb.i, %bb.h
  %i.cc = load ptr, ptr %i.h, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = sext i16 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next.i34, %i.cf
  br i1 %i.cg, label %bb.g, label %gistDeCompressAtt.exit40, !llvm.loop !2

gistDeCompressAtt.exit40:                         ; preds = %gistdentryinit.exit.i39
  %i.ch = icmp sgt i16 %i.ce, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %gistDeCompressAtt.exit40
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 1576
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 13864 ; 2 uses
  %i.cm = ptrtoint ptr %5 to i64
  %i.cn = ptrtoint ptr %i.c to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 9256
  %i.cp = ptrtoint ptr %i.b to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 11 uses
  %.03144 = phi i8 [ 0, %.lr.ph ], [ %.1, %.thread ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !range !8, !noundef !9 ; 3 uses
  %i.ct = trunc nuw i8 %i.cs to i1                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.cv = load i8, ptr %i.cu, align 1, !range !8, !noundef !9 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4
  store i32 2, ptr %5, align 8
  %i.cy = and i8 %i.cv, %i.cs
  %or.cond.i.not = icmp eq i8 %i.cy, 0
  br i1 %or.cond.i.not, label %gistMakeUnionKey.exit, label %gistMakeUnionKey.exit.thread

gistMakeUnionKey.exit:                            ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.da = or i8 %i.cv, %i.cs
  %brmerge.i.not = icmp eq i8 %i.da, 0            ; 2 uses
  %. = select i1 %i.ct, ptr %i.cz, ptr %i.cq      ; 2 uses
  %.sink64 = select i1 %brmerge.i.not, ptr %i.cq, ptr %.
  %.sink = select i1 %brmerge.i.not, ptr %i.cz, ptr %.
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sink64, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sink, i64 32, i1 false)
  store i8 0, ptr %i.cx, align 1
  %i.db = getelementptr inbounds nuw [48 x i8], ptr %i.ck, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = call i64 @FunctionCall2Coll(ptr noundef nonnull %i.db, i32 noundef %i.dd, i64 noundef %i.cm, i64 noundef %i.cn) #11 ; 2 uses
  store i64 %i.de, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.df = or i8 %i.cv, %.03144
  %brmerge.not = icmp eq i8 %i.df, 0
  br i1 %brmerge.not, label %bb.m, label %.thread

gistMakeUnionKey.exit.thread:                     ; preds = %bb.l
  store i8 1, ptr %i.cx, align 1
  store i64 0, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread

bb.m:                                             ; preds = %gistMakeUnionKey.exit
  br i1 %i.ct, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = load i64, ptr %i.cq, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = call i64 @FunctionCall3Coll(ptr noundef nonnull %i.dh, i32 noundef %i.dj, i64 noundef %i.dg, i64 noundef %i.de, i64 noundef %i.cp) #11 ; 0 uses
  %i.dl = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %i.dm, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %.thread

.thread:                                          ; preds = %gistMakeUnionKey.exit.thread, %gistMakeUnionKey.exit, %bb.o, %bb.n
  %.1 = phi i8 [ %.03144, %gistMakeUnionKey.exit ], [ %.03144, %gistMakeUnionKey.exit.thread ], [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = sext i16 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.l, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.thread
  %8 = trunc nuw i8 %.1 to i1
  br i1 %8, label %bb.p, label %._crit_edge.thread

bb.p:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = icmp sgt i16 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i, label %gistFormTuple.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 3112
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 13864
  %i.eb = ptrtoint ptr %4 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.pre10.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.pre11.i, %bb.v ] ; 2 uses
  %i.ec = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.es, %bb.v ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ee = load i8, ptr %i.ed, align 1, !range !8, !noundef !9
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i64 0, ptr %i.eg, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  store i64 %i.ei, ptr %4, align 8
  store ptr %0, ptr %i.dv, align 8
  store ptr null, ptr %i.dw, align 8
  store i16 0, ptr %i.dx, align 8
  store i8 0, ptr %i.dy, align 2
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8
  %.not.i.i41 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.i
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.ej, i32 noundef %i.en, i64 noundef %i.eb) #11
  %i.ep = inttoptr i64 %i.eo to ptr
  %.pre.i.i = load i64, ptr %i.ep, align 8
  %.pre.pre.i = load ptr, ptr %i.h, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.t ], [ %.pre10.i, %bb.s ] ; 2 uses
  %i.eq = phi i64 [ %.pre.i.i, %bb.t ], [ %i.ei, %bb.s ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i64 %i.eq, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pre11.i = phi ptr [ %.pre.i, %bb.u ], [ %.pre10.i, %bb.r ]
  %i.es = phi ptr [ %.pre.i, %bb.u ], [ %i.ec, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = sext i16 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next.i.i, %i.ev
  br i1 %i.ew, label %bb.q, label %gistFormTuple.exit, !llvm.loop !0

gistFormTuple.exit:                               ; preds = %bb.v, %bb.p
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ex = load ptr, ptr %.in.i, align 8
  %i.ey = call ptr @index_form_tuple(ptr noundef %i.ex, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #11 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i16 -1, ptr %i.ez, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ey, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %gistDeCompressAtt.exit, %gistDeCompressAtt.exit40, %gistFormTuple.exit, %._crit_edge
  %.030 = phi ptr [ %i.ey, %gistFormTuple.exit ], [ null, %._crit_edge ], [ null, %gistDeCompressAtt.exit40 ], [ null, %gistDeCompressAtt.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @gistchoose(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca [32 x float], align 16            ; 5 uses
  %4 = alloca %struct.GISTENTRY, align 8          ; 11 uses
  %5 = alloca [32 x %struct.GISTENTRY], align 16  ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp sgt i16 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %gistDeCompressAtt.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4648
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 13864
  br label %bb.b

bb.b:                                             ; preds = %gistdentryinit.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %gistdentryinit.exit.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.o = call fastcc i64 @index_getattr(ptr noundef %2, i32 noundef %i.n, ptr noundef %i.l, ptr noundef nonnull %i.m)
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %indvars.iv.i ; 9 uses
  %i.q = load i8, ptr %i.m, align 1, !range !8, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 26 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.p, align 16
  store ptr %0, ptr %i.s, align 8
  store ptr null, ptr %i.t, align 16
  store i16 0, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %gistdentryinit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.w, i32 noundef %i.aa, i64 noundef %i.ab) #11
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %.not39.i.i = icmp eq ptr %i.p, %i.ad
  br i1 %.not39.i.i, label %gistdentryinit.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.p, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.t, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ak = load i16, ptr %i.aj, align 8
  store i16 %i.ak, ptr %i.u, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.am = load i8, ptr %i.al, align 2, !range !8, !noundef !9
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %i.p, align 16
  store ptr %0, ptr %i.s, align 8
  store ptr null, ptr %i.t, align 16
  store i16 0, ptr %i.u, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i8 [ %i.am, %bb.e ], [ 0, %bb.f ]
  store i8 %.sink.i.i, ptr %i.v, align 2
  br label %gistdentryinit.exit.i

gistdentryinit.exit.i:                            ; preds = %.sink.split.i.i, %bb.d, %bb.c
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sext i16 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %bb.b, label %gistDeCompressAtt.exit, !llvm.loop !2

gistDeCompressAtt.exit:                           ; preds = %gistdentryinit.exit.i, %bb.a
  store float -1.000000e+00, ptr %i.b, align 16
  %i.as = getelementptr i8, ptr %1, i64 12
  %.val = load i16, ptr %i.as, align 4            ; 2 uses
  %i.at = icmp ult i16 %.val, 25
  %i.au = zext i16 %.val to i32
  %i.av = add nuw nsw i32 %i.au, 262120
end_hunk_0
