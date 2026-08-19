loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inflate_table:.preheader237
  %i.a = alloca [16 x i16], align 16              ; 40 uses
  %i.b = alloca [16 x i16], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !9
  %.not267 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not267, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %.preheader237
  %i.c = load i32, ptr %4, align 4, !tbaa !11
  br label %bb.a

.lr.ph.preheader:                                 ; preds = %.preheader237
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i16, ptr %i.e, align 2, !tbaa !9
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !9
  %i.j = add i16 %i.i, 1
  store i16 %i.j, ptr %i.h, align 2, !tbaa !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !9
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !9
  %i.q = add i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 2, !tbaa !9
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !9
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 2, !tbaa !9
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !9
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !9
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ac, align 2, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !12

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod363 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod363)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !9
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !9
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !9
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !9 ; 2 uses
  %i.al = load i32, ptr %4, align 4, !tbaa !11    ; 2 uses
  %.not213 = icmp eq i16 %.pre, 0
  br i1 %.not213, label %bb.a, label %.lr.ph249.preheader

bb.a:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = phi i32 [ %i.c, %._crit_edge.thread ], [ %i.al, %._crit_edge ] ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !9
  %.not213.1 = icmp eq i16 %i.ao, 0
  br i1 %.not213.1, label %bb.b, label %.lr.ph249.preheader

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !9
  %.not213.2 = icmp eq i16 %i.aq, 0
  br i1 %.not213.2, label %bb.c, label %.lr.ph249.preheader

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !9
  %.not213.3 = icmp eq i16 %i.as, 0
  br i1 %.not213.3, label %bb.d, label %.lr.ph249.preheader

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.au = load i16, ptr %i.at, align 2, !tbaa !9
  %.not213.4 = icmp eq i16 %i.au, 0
  br i1 %.not213.4, label %bb.e, label %.lr.ph249.preheader

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !9
  %.not213.5 = icmp eq i16 %i.aw, 0
  br i1 %.not213.5, label %bb.f, label %.lr.ph249.preheader

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !9
  %.not213.6 = icmp eq i16 %i.ay, 0
  br i1 %.not213.6, label %bb.g, label %.lr.ph249.preheader

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = load i16, ptr %i.az, align 16, !tbaa !9
  %.not213.7 = icmp eq i16 %i.ba, 0
  br i1 %.not213.7, label %bb.h, label %.lr.ph249.preheader

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !9
  %.not213.8 = icmp eq i16 %i.bc, 0
  br i1 %.not213.8, label %bb.i, label %.lr.ph249.preheader

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !9
  %.not213.9 = icmp eq i16 %i.be, 0
  br i1 %.not213.9, label %bb.j, label %.lr.ph249.preheader

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !9
  %.not213.10 = icmp eq i16 %i.bg, 0
  br i1 %.not213.10, label %bb.k, label %.lr.ph249.preheader

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !9
  %.not213.11 = icmp eq i16 %i.bi, 0
  br i1 %.not213.11, label %bb.l, label %.lr.ph249.preheader

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !9
  %.not213.12 = icmp eq i16 %i.bk, 0
  br i1 %.not213.12, label %bb.m, label %.lr.ph249.preheader

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !9
  %.not213.13 = icmp eq i16 %i.bm, 0
  br i1 %.not213.13, label %bb.n, label %.lr.ph249.preheader

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !9
  %.not213.14 = icmp eq i16 %i.bo, 0
  br i1 %.not213.14, label %bb.o, label %._crit_edge250

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.bq, ptr %3, align 8, !tbaa !16
  store i8 64, ptr %i.bp, align 2, !tbaa !18
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !18
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !9
  %i.br = load ptr, ptr %3, align 8, !tbaa !16    ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %3, align 8, !tbaa !16
  store i8 64, ptr %i.br, align 2, !tbaa !18
  %.sroa.11.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx21, align 1, !tbaa !18
  %.sroa.14.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx27, align 2, !tbaa !9
  br label %.loopexit.sink.split

.lr.ph249.preheader:                              ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.ph = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.c ], [ %i.am, %bb.b ], [ %i.am, %bb.a ], [ %i.al, %._crit_edge ]
  %.ph321 = phi i16 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0197246.lcssa.ph = phi i32 [ 2, %bb.m ], [ 3, %bb.l ], [ 4, %bb.k ], [ 5, %bb.j ], [ 6, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ 9, %bb.f ], [ 10, %bb.e ], [ 11, %bb.d ], [ 12, %bb.c ], [ 13, %bb.b ], [ 14, %bb.a ], [ 15, %._crit_edge ] ; 6 uses
  %spec.select323 = tail call i32 @llvm.umin.i32(i32 %.ph, i32 %.0197246.lcssa.ph)
  %wide.trip.count283 = zext nneg i32 %.0197246.lcssa.ph to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.p
  %indvars.iv280 = phi i64 [ 1, %.lr.ph249.preheader ], [ %indvars.iv.next281, %bb.p ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv280
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !9
  %.not214 = icmp eq i16 %i.bu, 0
  br i1 %.not214, label %bb.p, label %._crit_edge250.loopexit.split.loop.exit

bb.p:                                             ; preds = %.lr.ph249
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge250, label %.lr.ph249, !llvm.loop !19

._crit_edge250.loopexit.split.loop.exit:          ; preds = %.lr.ph249
  %i.bv = trunc nuw nsw i64 %indvars.iv280 to i32 ; 2 uses
  %i.bw = tail call i32 @llvm.umax.i32(i32 %spec.select323, i32 %i.bv)
  br label %._crit_edge250

._crit_edge250:                                   ; preds = %bb.p, %bb.n, %._crit_edge250.loopexit.split.loop.exit
  %spec.select326 = phi i32 [ 1, %bb.n ], [ %i.bw, %._crit_edge250.loopexit.split.loop.exit ], [ %.0197246.lcssa.ph, %bb.p ] ; 8 uses
  %.0197246.lcssa324 = phi i32 [ 1, %bb.n ], [ %.0197246.lcssa.ph, %._crit_edge250.loopexit.split.loop.exit ], [ %.0197246.lcssa.ph, %bb.p ] ; 4 uses
  %i.bx = phi i1 [ false, %bb.n ], [ true, %._crit_edge250.loopexit.split.loop.exit ], [ true, %bb.p ]
  %i.by = phi i16 [ 0, %bb.n ], [ %.ph321, %._crit_edge250.loopexit.split.loop.exit ], [ %.ph321, %bb.p ]
  %.0198.lcssa = phi i32 [ 1, %bb.n ], [ %i.bv, %._crit_edge250.loopexit.split.loop.exit ], [ %.0197246.lcssa.ph, %bb.p ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !9  ; 4 uses
  %i.cb = icmp ugt i16 %i.ca, 2
  br i1 %i.cb, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %._crit_edge250
  %i.cc = shl nuw nsw i16 %i.ca, 1
  %i.cd = sub nuw nsw i16 4, %i.cc
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !9  ; 2 uses
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub nsw i32 %i.ce, %i.ch                ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = shl nuw nsw i32 %i.ci, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9  ; 2 uses
  %i.cn = zext i16 %i.cm to i32
  %i.co = sub nsw i32 %i.ck, %i.cn                ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i32 %i.co, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !9  ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = sub nsw i32 %i.cq, %i.ct                ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i32 %i.cu, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !9  ; 2 uses
  %i.cz = zext i16 %i.cy to i32
  %i.da = sub nsw i32 %i.cw, %i.cz                ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = shl nuw nsw i32 %i.da, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !9  ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = sub nsw i32 %i.dc, %i.df                ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = shl nuw nsw i32 %i.dg, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !9  ; 2 uses
  %i.dl = zext i16 %i.dk to i32
  %i.dm = sub nsw i32 %i.di, %i.dl                ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = shl nuw nsw i32 %i.dm, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dq = load i16, ptr %i.dp, align 16, !tbaa !9 ; 2 uses
  %i.dr = zext i16 %i.dq to i32
  %i.ds = sub nsw i32 %i.do, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw nsw i32 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !9  ; 2 uses
  %i.dx = zext i16 %i.dw to i32
  %i.dy = sub nsw i32 %i.du, %i.dx                ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = shl nuw nsw i32 %i.dy, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ec = load i16, ptr %i.eb, align 4, !tbaa !9  ; 2 uses
  %i.ed = zext i16 %i.ec to i32
  %i.ee = sub nsw i32 %i.ea, %i.ed                ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = shl nuw nsw i32 %i.ee, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !9  ; 2 uses
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.eg, %i.ej                ; 2 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = shl nuw nsw i32 %i.ek, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eo = load i16, ptr %i.en, align 8, !tbaa !9  ; 2 uses
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.em, %i.ep                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !9  ; 2 uses
  %i.ev = zext i16 %i.eu to i32
  %i.ew = sub nsw i32 %i.es, %i.ev                ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = shl nuw nsw i32 %i.ew, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !9  ; 2 uses
  %i.fb = zext i16 %i.fa to i32
  %i.fc = sub nsw i32 %i.ey, %i.fb                ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = shl nuw nsw i32 %i.fc, 1                ; 2 uses
  %i.ff = zext i16 %i.by to i32                   ; 2 uses
  %i.fg = icmp samesign ult i32 %i.fe, %i.ff
  br i1 %i.fg, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not234 = icmp ne i32 %i.fe, %i.ff
  %i.fh = icmp eq i32 %0, 0
  %or.cond = or i1 %i.fh, %i.bx
  %or.cond347 = and i1 %.not234, %or.cond
  br i1 %or.cond347, label %.loopexit, label %.preheader235

.preheader235:                                    ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.fi, align 2, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ca, ptr %i.fj, align 4, !tbaa !9
  %i.fk = add i16 %i.cg, %i.ca                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !9
  %i.fm = add i16 %i.cm, %i.fk                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fm, ptr %i.fn, align 8, !tbaa !9
  %i.fo = add i16 %i.cs, %i.fm                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !9
  %i.fq = add i16 %i.cy, %i.fo                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.fq, ptr %i.fr, align 4, !tbaa !9
  %i.fs = add i16 %i.de, %i.fq                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !9
  %i.fu = add i16 %i.dk, %i.fs                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fu, ptr %i.fv, align 16, !tbaa !9
  %i.fw = add i16 %i.dq, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !9
  %i.fy = add i16 %i.dw, %i.fw                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.fy, ptr %i.fz, align 4, !tbaa !9
  %i.ga = add i16 %i.ec, %i.fy                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !9
  %i.gc = add i16 %i.ei, %i.ga                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.gc, ptr %i.gd, align 8, !tbaa !9
  %i.ge = add i16 %i.eo, %i.gc                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !9
  %i.gg = add i16 %i.eu, %i.ge                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.gg, ptr %i.gh, align 4, !tbaa !9
  %i.gi = add i16 %i.fa, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !9
  br i1 %.not267, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.preheader235
  %wide.trip.count296 = zext i32 %2 to i64        ; 2 uses
  %xtraiter364 = and i64 %wide.trip.count296, 1
  %i.gk = icmp eq i32 %2, 1
  br i1 %i.gk, label %.lr.ph257.epil.preheader, label %.lr.ph257.preheader.new

.lr.ph257.preheader.new:                          ; preds = %.lr.ph257.preheader
  %unroll_iter368 = and i64 %wide.trip.count296, 4294967294
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.ah, %.lr.ph257.preheader.new
  %indvars.iv293 = phi i64 [ 0, %.lr.ph257.preheader.new ], [ %indvars.iv.next294.1, %bb.ah ] ; 4 uses
  %niter369 = phi i64 [ 0, %.lr.ph257.preheader.new ], [ %niter369.next.1, %bb.ah ]
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv293
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !9  ; 2 uses
  %.not221 = icmp eq i16 %i.gm, 0
  br i1 %.not221, label %.lr.ph257.1, label %bb.af
end_hunk_0
