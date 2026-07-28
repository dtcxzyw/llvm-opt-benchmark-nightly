inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@HUF_readStats:bb.a
  %i.a = alloca [256 x i16], align 16             ; 5 uses
  %i.b = alloca [4097 x i32], align 16            ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %4, align 1, !tbaa !10      ; 4 uses
  %i.f = zext i8 %i.e to i64                      ; 14 uses
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i8 %i.e, -15
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -968
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.f, -127                   ; 5 uses
  %i.n = add nsw i64 %i.f, -126
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.o, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 2)
  %i.q = add nsw i64 %umax76, -1
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add nsw i64 %i.f, -128
  %i.u = lshr i64 %i.t, 1
  %i.v = and i64 %i.f, 126
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 2
  %i.x = getelementptr i8, ptr %4, i64 %i.u
  %scevgep75 = getelementptr i8, ptr %i.x, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.m, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 9
  %wide.load = load <8 x i8>, ptr %i.p, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %wide.load78 = load <8 x i8>, ptr %i.z, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %i.aa = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ab = lshr <8 x i8> %wide.load78, splat (i8 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = and <8 x i8> %wide.load, splat (i8 15)
  %i.ae = and <8 x i8> %wide.load78, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.aa, <8 x i8> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %interleaved.vec81 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81, ptr %i.ac, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %i.af = icmp eq i64 %n.vec, 16
  br i1 %i.af, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %wide.load78.1 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %i.ai = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.aj = lshr <8 x i8> %wide.load78.1, splat (i8 4)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.an = and <8 x i8> %wide.load78.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ai, <8 x i8> %i.am, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ak, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %interleaved.vec81.1 = shufflevector <8 x i8> %i.aj, <8 x i8> %i.an, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81.1, ptr %i.al, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %i.ao = icmp eq i64 %n.vec, 32
  br i1 %i.ao, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %wide.load78.2 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %i.ar = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.as = lshr <8 x i8> %wide.load78.2, splat (i8 4)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.aw = and <8 x i8> %wide.load78.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ar, <8 x i8> %i.av, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.at, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %interleaved.vec81.2 = shufflevector <8 x i8> %i.as, <8 x i8> %i.aw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81.2, ptr %i.au, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.s, -4                     ; 3 uses
  %i.ax = shl i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = shl nuw i64 %index84, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.az, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %i.ba = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.bc = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.ba, <4 x i8> %i.bc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.bb, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.s, %n.vec83
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.be = phi i64 [ %i.bo, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bf = lshr exact i64 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = lshr i8 %i.bh, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !10
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bl = and i8 %i.bk, 15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !10
  %i.bo = add nuw nsw i64 %i.be, 2                ; 2 uses
  %i.bp = icmp samesign ugt i64 %i.m, %i.bo
  br i1 %i.bp, label %.lr.ph, label %.loopexit.thread, !llvm.loop !117

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.f
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 255, ptr %i.d, align 4, !tbaa !50
  %i.br = icmp samesign ult i8 %i.e, 2
  br i1 %i.br, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = call fastcc i64 @FSE_readNCount(ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %i.bq, i64 noundef range(i64 0, 128) %i.f) ; 5 uses
  %i.bt = icmp ult i64 %i.bs, -119
  br i1 %i.bt, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.bs, %i.f
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !50
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !50
  %i.bw = call fastcc i64 @FSE_buildDTable(ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef %i.bu, i32 noundef %i.bv) ; 2 uses
  %i.bx = icmp ult i64 %i.bw, -119
  br i1 %i.bx, label %bb.k, label %FSE_decompress.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.by = sub nsw i64 %i.f, %i.bs                 ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs ; 42 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.3.0.copyload.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  %.not.i.i = icmp eq i16 %.sroa.3.0.copyload.i.i, 0
  %6 = icmp ugt i64 %i.by, 7                      ; 2 uses
  br i1 %.not.i.i, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.f
  %i.ca = getelementptr i8, ptr %.ptr.i.i, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.ce = zext i8 %i.cd to i64                    ; 7 uses
  switch i64 %i.by, label %bb.u [
    i64 7, label %bb.o
    i64 6, label %bb.p
    i64 5, label %bb.q
    i64 4, label %bb.r
    i64 3, label %bb.s
    i64 2, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10
  %i.ch = zext i8 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 48
  %i.cj = or disjoint i64 %i.ci, %i.ce
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ck = phi i64 [ %i.cj, %bb.o ], [ %i.ce, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = add nuw nsw i64 %i.co, %i.ck
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cq = phi i64 [ %i.cp, %bb.p ], [ %i.ce, %bb.n ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 32
  %i.cv = add nuw nsw i64 %i.cu, %i.cq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.cw = phi i64 [ %i.cv, %bb.q ], [ %i.ce, %bb.n ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 24
  %i.db = add nuw nsw i64 %i.da, %i.cw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.dc = phi i64 [ %i.db, %bb.r ], [ %i.ce, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 16
  %i.dh = add nuw nsw i64 %i.dg, %i.dc
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.di = phi i64 [ %i.dh, %bb.s ], [ %i.ce, %bb.n ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 8
  %i.dn = add nuw nsw i64 %i.dm, %i.di
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.sroa.0270.2.i.i = phi i64 [ %i.ce, %bb.n ], [ %i.dn, %bb.t ]
  %i.do = getelementptr i8, ptr %i.bq, i64 %i.f
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !10  ; 2 uses
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.thread320.i.i

BIT_initDStream.exit.thread320.i.i:               ; preds = %bb.u
  %i.ds = zext i8 %i.dq to i32
  %i.dt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.by to i32
  %i.dv = shl nuw nsw i32 %i.du, 3
  %reass.sub = sub nsw i32 %i.dt, %i.dv
  %i.dw = add nsw i32 %reass.sub, 41
  br label %bb.v

BIT_initDStream.exit.i.i:                         ; preds = %bb.m
  %.add.i.i = add nsw i64 %i.by, -8               ; 2 uses
  %.ptr378.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.add.i.i
  %.val.i.i.i = load i64, ptr %.ptr378.i.i, align 1
  %i.dx = zext i8 %i.cb to i32
  %i.dy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dx, i1 true)
  %i.dz = xor i32 %i.dy, 31
  %i.ea = sub nuw nsw i32 8, %i.dz
  %i.eb = icmp ult i64 %i.by, -119
  br i1 %i.eb, label %bb.v, label %FSE_decompress.exit.thread

bb.v:                                             ; preds = %BIT_initDStream.exit.i.i, %BIT_initDStream.exit.thread320.i.i
  %.sroa.0270.3330.i.i = phi i64 [ %.sroa.0270.2.i.i, %BIT_initDStream.exit.thread320.i.i ], [ %.val.i.i.i, %BIT_initDStream.exit.i.i ] ; 3 uses
  %.sroa.27271.3329.i.i = phi i32 [ %i.dw, %BIT_initDStream.exit.thread320.i.i ], [ %i.ea, %BIT_initDStream.exit.i.i ] ; 2 uses
  %.sroa.61278.3328.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit.thread320.i.i ], [ %.add.i.i, %BIT_initDStream.exit.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 16
  %i.ec = zext i16 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %i.ed = and i32 %.sroa.27271.3329.i.i, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl i64 %.sroa.0270.3330.i.i, %i.ee
  %i.eg = lshr i64 %i.ef, 1
  %i.eh = and i32 %i.ec, 63
  %i.ei = xor i32 %i.eh, 63
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.eg, %i.ej                   ; 2 uses
  %i.el = add nuw nsw i32 %.sroa.27271.3329.i.i, %i.ec ; 7 uses
  %i.em = icmp samesign ugt i32 %i.el, 64
  br i1 %i.em, label %FSE_initDState.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i = icmp slt i64 %.sroa.61278.3328.idx.i.i, 8
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = lshr i32 %i.el, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = and i32 %i.el, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.eq = icmp eq i64 %.sroa.61278.3328.idx.i.i, 0
  br i1 %i.eq, label %FSE_initDState.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = lshr i32 %i.el, 3
  %i.es = zext nneg i32 %i.er to i64
  %.024.i.i379.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.3328.idx.i.i, i64 %i.es) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i379.i.i to i32
  %i.et = and i64 %.024.i.i379.i.i, 4294967295
  %i.eu = shl nsw i32 %.024.i.i.i.i, 3
  %i.ev = sub nsw i32 %i.el, %i.eu
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.z, %bb.x
  %.pn380.i.i = phi i64 [ %i.et, %bb.z ], [ %i.eo, %bb.x ]
  %.sroa.27271.4.i.i = phi i32 [ %i.ev, %bb.z ], [ %i.ep, %bb.x ]
  %.sroa.61278.3328.ptr.add.i.i = sub nsw i64 %.sroa.61278.3328.idx.i.i, %.pn380.i.i ; 2 uses
  %.sroa.61278.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.3328.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61278.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.y, %bb.v
  %.sroa.61278.5.idx.i.i = phi i64 [ %.sroa.61278.3328.idx.i.i, %bb.v ], [ 0, %bb.y ], [ %.sroa.61278.3328.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 5 uses
  %.sroa.27271.5.i.i = phi i32 [ %i.el, %bb.v ], [ %i.el, %bb.y ], [ %.sroa.27271.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0270.4.i.i = phi i64 [ %.sroa.0270.3330.i.i, %bb.v ], [ %.sroa.0270.3330.i.i, %bb.y ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.ex = and i32 %.sroa.27271.5.i.i, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl i64 %.sroa.0270.4.i.i, %i.ey
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = lshr i64 %i.fa, %i.ej                   ; 2 uses
  %i.fc = add nsw i32 %.sroa.27271.5.i.i, %i.ec   ; 7 uses
  %i.fd = icmp ugt i32 %i.fc, 64
  br i1 %i.fd, label %FSE_initDState.exit44.i.i, label %bb.aa

bb.aa:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i39.i.i = icmp slt i64 %.sroa.61278.5.idx.i.i, 8
  br i1 %.not.i.i39.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = lshr i32 %i.fc, 3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = and i32 %i.fc, 7
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.fh = icmp eq i64 %.sroa.61278.5.idx.i.i, 0
  br i1 %i.fh, label %.lr.ph.i.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = lshr i32 %i.fc, 3
  %i.fj = zext nneg i32 %i.fi to i64
  %.024.i.i43381.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.5.idx.i.i, i64 %i.fj) ; 2 uses
  %.024.i.i43.i.i = trunc i64 %.024.i.i43381.i.i to i32
  %i.fk = and i64 %.024.i.i43381.i.i, 4294967295
  %i.fl = shl i32 %.024.i.i43.i.i, 3
  %i.fm = sub i32 %i.fc, %i.fl
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

BIT_reloadDStream.exit.sink.split.i40.i.i:        ; preds = %bb.ad, %bb.ab
  %.pn382.i.i = phi i64 [ %i.fk, %bb.ad ], [ %i.ff, %bb.ab ]
  %.sroa.27271.6.i.i = phi i32 [ %i.fm, %bb.ad ], [ %i.fg, %bb.ab ]
  %.sroa.61278.5.ptr.add.i.i = sub nsw i64 %.sroa.61278.5.idx.i.i, %.pn382.i.i ; 2 uses
  %.sroa.61278.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.5.ptr.add.i.i
  %.val30.i.sink.i42.i.i = load i64, ptr %.sroa.61278.6.ptr.i.i, align 1
  br label %FSE_initDState.exit44.i.i

FSE_initDState.exit44.i.i:                        ; preds = %BIT_reloadDStream.exit.sink.split.i40.i.i, %FSE_initDState.exit.i.i
  %.sroa.61278.7.idx.i.i = phi i64 [ %.sroa.61278.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61278.5.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 2 uses
  %.sroa.27271.7.i.i = phi i32 [ %i.fc, %FSE_initDState.exit.i.i ], [ %.sroa.27271.6.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %i.gw ; 3 uses
  %.sroa.0.0.copyload.i66.i.i = load i16, ptr %i.hn, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i67.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %.sroa.4.0.copyload.i68.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i67.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %.sroa.5.0.copyload.i70.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i69.i.i, align 1, !tbaa !10
  %i.ho = zext i8 %.sroa.5.0.copyload.i70.i.i to i32 ; 2 uses
  %i.hp = and i32 %i.hi, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl i64 %.sroa.0270.6.i.i, %i.hq
  %i.hs = sub nsw i32 0, %i.ho
  %i.ht = and i32 %i.hs, 63
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = lshr i64 %i.hr, %i.hu
  %i.hw = add i32 %i.hi, %i.ho                    ; 3 uses
  %i.hx = zext i16 %.sroa.0.0.copyload.i66.i.i to i64
  %i.hy = add i64 %i.hv, %i.hx                    ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i15.i95.i, i64 3
  store i8 %.sroa.4.0.copyload.i68.i.i, ptr %i.hz, align 1, !tbaa !10
  %.036.add.i29.i.i = add nuw nsw i64 %.036.idx.i14.i94.i, 4 ; 2 uses
  %i.ia = icmp ugt i32 %i.hw, 64
  br i1 %i.ia, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i, !llvm.loop !118

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %BIT_endOfDStream.exit98.thread.i.i
  %.1.idx.i16473.i.i = phi i64 [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.036.idx.i14.i94.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0270.1472.i.i = phi i64 [ %.sroa.0270.8.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0270.1472.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.27271.1471.i.i = phi i32 [ %i.jt, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.1471.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.61278.1.idx470.i.i = phi i64 [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.1.idx470.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0257.1469.i.i = phi i64 [ %i.jv, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0257.0.i90.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0263.1468.i.i = phi i64 [ %i.iy, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0263.0.i89.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i17474.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i16473.i.i
  %.not.i73.i.i = icmp slt i64 %.sroa.61278.1.idx470.i.i, 8
  br i1 %.not.i73.i.i, label %bb.ai, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.ib = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %.sroa.61278.1.add388.i.i = sub nuw nsw i64 %.sroa.61278.1.idx470.i.i, %i.ic ; 3 uses
  %.ptr392.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.61278.1.add388.i.i
  %i.id = and i32 %.sroa.27271.1471.i.i, 7
  %.val30.i74.i.i = load i64, ptr %.ptr392.i.i, align 1
  %i.ie = icmp eq i64 %.sroa.61278.1.add388.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.if = icmp eq i64 %.sroa.61278.1.idx470.i.i, 0
  br i1 %i.if, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %.024.i76393.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.1.idx470.i.i, i64 %i.ih) ; 2 uses
  %.024.i76.i.i = trunc i64 %.024.i76393.i.i to i32
  %i.ii = and i64 %.024.i76393.i.i, 4294967295
  %.sroa.61278.1.add.i.i = sub nsw i64 %.sroa.61278.1.idx470.i.i, %i.ii ; 2 uses
  %.ptr391.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.1.add.i.i
  %i.ij = shl i32 %.024.i76.i.i, 3
  %i.ik = sub i32 %.sroa.27271.1471.i.i, %i.ij
  %.val.i78.i.i = load i64, ptr %.ptr391.i.i, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.61278.9.ph.idx.i.i = phi i64 [ 0, %bb.ai ], [ %.sroa.61278.1.add.i.i, %bb.aj ] ; 2 uses
  %.sroa.27271.9.ph.i.i = phi i32 [ %.sroa.27271.1471.i.i, %bb.ai ], [ %i.ik, %bb.aj ] ; 2 uses
  %.sroa.0270.7.ph.i.i = phi i64 [ %.sroa.0270.1472.i.i, %bb.ai ], [ %.val.i78.i.i, %bb.aj ]
  %i.il = icmp eq i64 %.sroa.61278.9.ph.idx.i.i, 0 ; 2 uses
  %.not394.i.i = icmp eq i32 %.sroa.27271.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.il, %.not394.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.ak, %.thread.i.i
  %i.im = phi i1 [ %i.ie, %.thread.i.i ], [ %i.il, %bb.ak ]
  %.sroa.0270.7.ph630.i.i = phi i64 [ %.val30.i74.i.i, %.thread.i.i ], [ %.sroa.0270.7.ph.i.i, %bb.ak ] ; 2 uses
  %.sroa.27271.9.ph629.i.i = phi i32 [ %i.id, %.thread.i.i ], [ %.sroa.27271.9.ph.i.i, %bb.ak ] ; 2 uses
  %.sroa.61278.9.ph.idx628.i.i = phi i64 [ %.sroa.61278.1.add388.i.i, %.thread.i.i ], [ %.sroa.61278.9.ph.idx.i.i, %bb.ak ] ; 5 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.sroa.0263.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i82.i.i = load i16, ptr %i.in, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %.sroa.4.0.copyload.i84.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i83.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %.sroa.5.0.copyload.i86.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i85.i.i, align 1, !tbaa !10
  %i.io = zext i8 %.sroa.5.0.copyload.i86.i.i to i32 ; 2 uses
  %i.ip = and i32 %.sroa.27271.9.ph629.i.i, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl i64 %.sroa.0270.7.ph630.i.i, %i.iq
  %i.is = sub nsw i32 0, %i.io
  %i.it = and i32 %i.is, 63
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = lshr i64 %i.ir, %i.iu
  %i.iw = add i32 %.sroa.27271.9.ph629.i.i, %i.io ; 7 uses
  %i.ix = zext i16 %.sroa.0.0.copyload.i82.i.i to i64
  %i.iy = add i64 %i.iv, %i.ix                    ; 5 uses
  %.add51.i24.i.i = or disjoint i64 %.1.idx.i16473.i.i, 1 ; 3 uses
  %.ptr.ptr.i25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i24.i.i
  store i8 %.sroa.4.0.copyload.i84.i.i, ptr %.1.ptr.ptr.i17474.i.i, align 1, !tbaa !10
  %i.iz = icmp ugt i32 %i.iw, 64
  br i1 %i.iz, label %BIT_reloadDStream.exit81.split.loop.exit445.i.i, label %bb.al

bb.al:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i89.i.i = icmp slt i64 %.sroa.61278.9.ph.idx628.i.i, 8
  br i1 %.not.i89.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ja = lshr i32 %i.iw, 3
  %i.jb = zext nneg i32 %i.ja to i64
  %.sroa.61278.9.ph.add387.i.i = sub nuw nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.jb ; 2 uses
  %.ptr390.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.61278.9.ph.add387.i.i
  %i.jc = and i32 %i.iw, 7
  %.val30.i90.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

bb.an:                                            ; preds = %bb.al
  br i1 %i.im, label %BIT_reloadDStream.exit97.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = lshr i32 %i.iw, 3
  %i.je = zext nneg i32 %i.jd to i64
  %.024.i92395.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.9.ph.idx628.i.i, i64 %i.je) ; 2 uses
  %.024.i92.i.i = trunc i64 %.024.i92395.i.i to i32
  %i.jf = and i64 %.024.i92395.i.i, 4294967295
  %.sroa.61278.9.ph.add.i.i = sub nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.jf ; 2 uses
  %.ptr389.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.9.ph.add.i.i
  %i.jg = shl i32 %.024.i92.i.i, 3
  %i.jh = sub i32 %i.iw, %i.jg
  %.val.i94.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

BIT_reloadDStream.exit97.i.i:                     ; preds = %bb.ao, %bb.an, %bb.am
  %.sroa.61278.10.idx.i.i = phi i64 [ %.sroa.61278.9.ph.add387.i.i, %bb.am ], [ %.sroa.61278.9.ph.add.i.i, %bb.ao ], [ 0, %bb.an ] ; 4 uses
  %.sroa.27271.10.i.i = phi i32 [ %i.jc, %bb.am ], [ %i.jh, %bb.ao ], [ %i.iw, %bb.an ] ; 4 uses
  %.sroa.0270.8.i.i = phi i64 [ %.val30.i90.i.i, %bb.am ], [ %.val.i94.i.i, %bb.ao ], [ %.sroa.0270.7.ph630.i.i, %bb.an ] ; 2 uses
  %i.ji = icmp eq i64 %.1.idx.i16473.i.i, 254
  br i1 %i.ji, label %BIT_reloadDStream.exit81.split.loop.exit457.i.i, label %bb.ap

bb.ap:                                            ; preds = %BIT_reloadDStream.exit97.i.i
  %i.jj = icmp eq i64 %.sroa.61278.10.idx.i.i, 0
  %.not396.i.i = icmp eq i32 %.sroa.27271.10.i.i, 64
  %or.cond426.i.i = and i1 %i.jj, %.not396.i.i
  br i1 %or.cond426.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit98.thread.i.i

BIT_endOfDStream.exit98.thread.i.i:               ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.sroa.0257.1469.i.i ; 3 uses
  %.sroa.0.0.copyload.i99.i.i = load i16, ptr %i.jk, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i100.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %.sroa.4.0.copyload.i101.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i100.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i102.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %.sroa.5.0.copyload.i103.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i102.i.i, align 1, !tbaa !10
  %i.jl = zext i8 %.sroa.5.0.copyload.i103.i.i to i32 ; 2 uses
  %i.jm = and i32 %.sroa.27271.10.i.i, 63
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = shl i64 %.sroa.0270.8.i.i, %i.jn
  %i.jp = sub nsw i32 0, %i.jl
  %i.jq = and i32 %i.jp, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i64 %i.jo, %i.jr
  %i.jt = add i32 %.sroa.27271.10.i.i, %i.jl      ; 3 uses
  %i.ju = zext i16 %.sroa.0.0.copyload.i99.i.i to i64
  %i.jv = add i64 %i.js, %i.ju                    ; 2 uses
  %.add.i28.i.i = add nuw nsw i64 %.1.idx.i16473.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i101.i.i, ptr %.ptr.ptr.i25.i.i, align 1, !tbaa !10
  %i.jw = icmp ugt i32 %i.jt, 64
  br i1 %i.jw, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i.i

BIT_reloadDStream.exit81.split.loop.exit445.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61278.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.9.ph.idx628.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit451.i.i:  ; preds = %bb.ah, %BIT_endOfDStream.exit98.thread.i.i, %.preheader438.i.i, %FSE_initDState.exit44.i.i
  %.sroa.61278.1.idx.lcssa.i.i = phi i64 [ %.sroa.61278.8.idx.i.i, %.preheader438.i.i ], [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.7.idx.i.i, %FSE_initDState.exit44.i.i ], [ %.sroa.61278.8.idx.i.i, %bb.ah ]
  %.sroa.0257.1.lcssa.ph452.i.i = phi i64 [ %.sroa.0257.0.i90.i, %.preheader438.i.i ], [ %i.jv, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.fb, %FSE_initDState.exit44.i.i ], [ %i.hy, %bb.ah ]
  %.sroa.0263.2.ph453.i.i = phi i64 [ %.sroa.0263.0.i89.i, %.preheader438.i.i ], [ %i.iy, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.ek, %FSE_initDState.exit44.i.i ], [ %i.hk, %bb.ah ]
  %.sroa.27271.2.ph455.i.i = phi i32 [ %.sroa.27271.8.i.i, %.preheader438.i.i ], [ %i.jt, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.7.i.i, %FSE_initDState.exit44.i.i ], [ %i.hw, %bb.ah ]
  %.2.idx.i19.ph456.i.i = phi i64 [ %.036.idx.i14.i94.i, %.preheader438.i.i ], [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ 0, %FSE_initDState.exit44.i.i ], [ %.036.add.i29.i.i, %bb.ah ]
  %.sroa.61278.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit457.i.i:  ; preds = %BIT_reloadDStream.exit97.i.i
  %.sroa.61278.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61278.10.idx.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.i.i:                     ; preds = %bb.ap, %bb.ak, %BIT_reloadDStream.exit81.split.loop.exit457.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i
  %.sroa.0257.1.lcssa.i.i = phi i64 [ %.sroa.0257.1.lcssa.ph452.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.sroa.0257.1469.i.i, %bb.ak ], [ %.sroa.0257.1469.i.i, %bb.ap ]
  %.sroa.0263.2.i.i = phi i64 [ %.sroa.0263.2.ph453.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %i.iy, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.iy, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.iy, %bb.ap ], [ %.sroa.0263.1468.i.i, %bb.ak ]
  %.sroa.61278.2.i.i = phi ptr [ %.sroa.61278.1.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.61278.10.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.61278.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ap ]
  %.sroa.27271.2.i.i = phi i32 [ %.sroa.27271.2.ph455.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.27271.10.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.iw, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ 64, %bb.ak ], [ 64, %bb.ap ]
  %.2.idx.i19.i.i = phi i64 [ %.2.idx.i19.ph456.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ 255, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.add51.i24.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.add51.i24.i.i, %bb.ap ], [ %.1.idx.i16473.i.i, %bb.ak ] ; 2 uses
  %i.jx = icmp eq ptr %.sroa.61278.2.i.i, %i.bz
  %.not397.i.i = icmp eq i32 %.sroa.27271.2.i.i, 64
  %or.cond427.i.i = and i1 %i.jx, %.not397.i.i
  %.not398.i.i = icmp eq i64 %.sroa.0263.2.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  %.not399.i.i = icmp eq i64 %.sroa.0257.1.lcssa.i.i, 0
  %or.cond429.i.i = select i1 %or.cond428.i.i, i1 %.not399.i.i, i1 false
  br i1 %or.cond429.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit106.thread.i.i

BIT_endOfDStream.exit106.thread.i.i:              ; preds = %BIT_reloadDStream.exit81.i.i
  %i.jy = icmp eq i64 %.2.idx.i19.i.i, 255
  %..i23.i.i = select i1 %i.jy, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.aq:                                            ; preds = %bb.k
  br i1 %6, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.ptr401.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.f
  %i.jz = getelementptr i8, ptr %.ptr401.i.i, i64 -1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !10  ; 2 uses
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit111.i.i

bb.as:                                            ; preds = %bb.aq
  %i.kc = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.kd = zext i8 %i.kc to i64                    ; 7 uses
  switch i64 %i.by, label %bb.az [
    i64 7, label %bb.at
    i64 6, label %bb.au
    i64 5, label %bb.av
    i64 4, label %bb.aw
    i64 3, label %bb.ax
    i64 2, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bz, i64 6
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !10
  %i.kg = zext i8 %i.kf to i64
  %i.kh = shl nuw nsw i64 %i.kg, 48
  %i.ki = or disjoint i64 %i.kh, %i.kd
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.kj = phi i64 [ %i.ki, %bb.at ], [ %i.kd, %bb.as ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !10
  %i.km = zext i8 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 40
  %i.ko = add nuw nsw i64 %i.kn, %i.kj
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.kp = phi i64 [ %i.ko, %bb.au ], [ %i.kd, %bb.as ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10
  %i.ks = zext i8 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 32
  %i.ku = add nuw nsw i64 %i.kt, %i.kp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.kv = phi i64 [ %i.ku, %bb.av ], [ %i.kd, %bb.as ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !10
  %i.ky = zext i8 %i.kx to i64
  %i.kz = shl nuw nsw i64 %i.ky, 24
  %i.la = add nuw nsw i64 %i.kz, %i.kv
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.as
  %i.lb = phi i64 [ %i.la, %bb.aw ], [ %i.kd, %bb.as ]
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !10
  %i.le = zext i8 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 16
  %i.lg = add nuw nsw i64 %i.lf, %i.lb
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %i.lh = phi i64 [ %i.lg, %bb.ax ], [ %i.kd, %bb.as ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !10
  %i.lk = zext i8 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 8
  %i.lm = add nuw nsw i64 %i.ll, %i.lh
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as
  %.sroa.0216.2.i.i = phi i64 [ %i.kd, %bb.as ], [ %i.lm, %bb.ay ]
  %i.ln = getelementptr i8, ptr %i.bq, i64 %i.f
  %i.lo = getelementptr i8, ptr %i.ln, i64 -1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !10  ; 2 uses
  %i.lq = icmp eq i8 %i.lp, 0
  br i1 %i.lq, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit111.thread352.i.i

BIT_initDStream.exit111.thread352.i.i:            ; preds = %bb.az
  %i.lr = zext i8 %i.lp to i32
  %i.ls = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lr, i1 true)
  %i.lt = trunc nuw nsw i64 %i.by to i32
  %i.lu = shl nuw nsw i32 %i.lt, 3
  %reass.sub168 = sub nsw i32 %i.ls, %i.lu
  %i.lv = add nsw i32 %reass.sub168, 41
  br label %bb.ba

BIT_initDStream.exit111.i.i:                      ; preds = %bb.ar
  %.add400.i.i = add nsw i64 %i.by, -8            ; 2 uses
  %.ptr402.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.add400.i.i
  %.val.i109.i.i = load i64, ptr %.ptr402.i.i, align 1
  %i.lw = zext i8 %i.ka to i32
  %i.lx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lw, i1 true)
  %i.ly = xor i32 %i.lx, 31
  %i.lz = sub nuw nsw i32 8, %i.ly
  %i.ma = icmp ult i64 %i.by, -119
  br i1 %i.ma, label %bb.ba, label %FSE_decompress.exit.thread

bb.ba:                                            ; preds = %BIT_initDStream.exit111.i.i, %BIT_initDStream.exit111.thread352.i.i
  %.sroa.61222.3361.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit111.thread352.i.i ], [ %.add400.i.i, %BIT_initDStream.exit111.i.i ] ; 5 uses
  %.sroa.27.3360.i.i = phi i32 [ %i.lv, %BIT_initDStream.exit111.thread352.i.i ], [ %i.lz, %BIT_initDStream.exit111.i.i ] ; 2 uses
  %.sroa.0216.3359.i.i = phi i64 [ %.sroa.0216.2.i.i, %BIT_initDStream.exit111.thread352.i.i ], [ %.val.i109.i.i, %BIT_initDStream.exit111.i.i ] ; 3 uses
  %.sroa.0.0.copyload.i112.i.i = load i16, ptr %i.b, align 16
  %i.mb = zext i16 %.sroa.0.0.copyload.i112.i.i to i32 ; 3 uses
  %i.mc = and i32 %.sroa.27.3360.i.i, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl i64 %.sroa.0216.3359.i.i, %i.md
  %i.mf = lshr i64 %i.me, 1
  %i.mg = and i32 %i.mb, 63
  %i.mh = xor i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64              ; 2 uses
  %i.mj = lshr i64 %i.mf, %i.mi                   ; 2 uses
  %i.mk = add nuw nsw i32 %.sroa.27.3360.i.i, %i.mb ; 7 uses
  %i.ml = icmp samesign ugt i32 %i.mk, 64
  br i1 %i.ml, label %FSE_initDState.exit120.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i115.i.i = icmp slt i64 %.sroa.61222.3361.idx.i.i, 8
  br i1 %.not.i.i115.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mm = lshr i32 %i.mk, 3
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = and i32 %i.mk, 7
  br label %BIT_reloadDStream.exit.sink.split.i116.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.mp = icmp eq i64 %.sroa.61222.3361.idx.i.i, 0
  br i1 %i.mp, label %FSE_initDState.exit120.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mq = lshr i32 %i.mk, 3
  %i.mr = zext nneg i32 %i.mq to i64
  %.024.i.i119403.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.3361.idx.i.i, i64 %i.mr) ; 2 uses
  %.024.i.i119.i.i = trunc nsw i64 %.024.i.i119403.i.i to i32
  %i.ms = and i64 %.024.i.i119403.i.i, 4294967295
  %i.mt = shl nsw i32 %.024.i.i119.i.i, 3
  %i.mu = sub nsw i32 %i.mk, %i.mt
  br label %BIT_reloadDStream.exit.sink.split.i116.i.i

BIT_reloadDStream.exit.sink.split.i116.i.i:       ; preds = %bb.be, %bb.bc
  %.sroa.27.4.i.i = phi i32 [ %i.mu, %bb.be ], [ %i.mo, %bb.bc ]
  %.pn404.i.i = phi i64 [ %i.ms, %bb.be ], [ %i.mn, %bb.bc ]
  %.sroa.61222.3361.ptr.add.i.i = sub nsw i64 %.sroa.61222.3361.idx.i.i, %.pn404.i.i ; 2 uses
  %.sroa.61222.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.3361.ptr.add.i.i
  %.val30.i.sink.i118.i.i = load i64, ptr %.sroa.61222.4.ptr.i.i, align 1
  br label %FSE_initDState.exit120.i.i

FSE_initDState.exit120.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i116.i.i, %bb.bd, %bb.ba
  %.sroa.0216.4.i.i = phi i64 [ %.sroa.0216.3359.i.i, %bb.ba ], [ %.sroa.0216.3359.i.i, %bb.bd ], [ %.val30.i.sink.i118.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 3 uses
  %.sroa.27.5.i.i = phi i32 [ %i.mk, %bb.ba ], [ %i.mk, %bb.bd ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 2 uses
  %.sroa.61222.5.idx.i.i = phi i64 [ %.sroa.61222.3361.idx.i.i, %bb.ba ], [ 0, %bb.bd ], [ %.sroa.61222.3361.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.mw = and i32 %.sroa.27.5.i.i, 63
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = shl i64 %.sroa.0216.4.i.i, %i.mx
  %i.mz = lshr i64 %i.my, 1
  %i.na = lshr i64 %i.mz, %i.mi                   ; 2 uses
  %i.nb = add nsw i32 %.sroa.27.5.i.i, %i.mb      ; 7 uses
  %i.nc = icmp ugt i32 %i.nb, 64
  br i1 %i.nc, label %FSE_initDState.exit129.i.i, label %bb.bf

bb.bf:                                            ; preds = %FSE_initDState.exit120.i.i
  %.not.i.i124.i.i = icmp slt i64 %.sroa.61222.5.idx.i.i, 8
  br i1 %.not.i.i124.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nd = lshr i32 %i.nb, 3
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = and i32 %i.nb, 7
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ng = icmp eq i64 %.sroa.61222.5.idx.i.i, 0
  br i1 %i.ng, label %.lr.ph107.i.preheader, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nh = lshr i32 %i.nb, 3
  %i.ni = zext nneg i32 %i.nh to i64
  %.024.i.i128405.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.5.idx.i.i, i64 %i.ni) ; 2 uses
  %.024.i.i128.i.i = trunc i64 %.024.i.i128405.i.i to i32
  %i.nj = and i64 %.024.i.i128405.i.i, 4294967295
  %i.nk = shl i32 %.024.i.i128.i.i, 3
  %i.nl = sub i32 %i.nb, %i.nk
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

BIT_reloadDStream.exit.sink.split.i125.i.i:       ; preds = %bb.bi, %bb.bg
  %.sroa.27.6.i.i = phi i32 [ %i.nl, %bb.bi ], [ %i.nf, %bb.bg ]
  %.pn406.i.i = phi i64 [ %i.nj, %bb.bi ], [ %i.ne, %bb.bg ]
  %.sroa.61222.5.ptr.add.i.i = sub nsw i64 %.sroa.61222.5.idx.i.i, %.pn406.i.i ; 2 uses
  %.sroa.61222.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.5.ptr.add.i.i
  %.val30.i.sink.i127.i.i = load i64, ptr %.sroa.61222.6.ptr.i.i, align 1
  br label %FSE_initDState.exit129.i.i

FSE_initDState.exit129.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i125.i.i, %FSE_initDState.exit120.i.i
  %.sroa.0216.5.i.i = phi i64 [ %.sroa.0216.4.i.i, %FSE_initDState.exit120.i.i ], [ %.val30.i.sink.i127.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ]
  %.sroa.27.7.i.i = phi i32 [ %i.nb, %FSE_initDState.exit120.i.i ], [ %.sroa.27.6.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %i.pr = and i32 %i.pk, 63
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = shl i64 %.sroa.0216.6.i.i, %i.ps
  %i.pu = lshr i64 %i.pt, 1
  %i.pv = and i32 %i.pq, 63
  %i.pw = xor i32 %i.pv, 63
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = lshr i64 %i.pu, %i.px
  %i.pz = add i32 %i.pk, %i.pq                    ; 3 uses
  %i.qa = zext i16 %.sroa.0.0.copyload.i160.i.i to i64
  %i.qb = add nuw i64 %i.py, %i.qa                ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i106.i, i64 3
  store i8 %.sroa.4.0.copyload.i162.i.i, ptr %i.qc, align 1, !tbaa !10
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i105.i, 4 ; 2 uses
  %i.qd = icmp ugt i32 %i.pz, 64
  br i1 %i.qd, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph107.i, !llvm.loop !118

.lr.ph515.i.i:                                    ; preds = %.lr.ph515.i.i.preheader, %BIT_endOfDStream.exit193.thread.i.i
  %.1.idx.i513.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.036.idx.i.i105.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0.1512.i.i = phi i64 [ %i.sa, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0.0.i104.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0208.1511.i.i = phi i64 [ %i.rc, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0208.0.i103.i, %.lr.ph515.i.i.preheader ] ; 2 uses
  %.sroa.61222.1.idx510.i.i = phi i64 [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.1.idx510.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.27.1509.i.i = phi i32 [ %i.ry, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.1509.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0216.1508.i.i = phi i64 [ %.sroa.0216.8.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0216.1508.i.i.ph, %.lr.ph515.i.i.preheader ]
  %.1.ptr.ptr.i514.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i513.i.i
  %.not.i167.i.i = icmp slt i64 %.sroa.61222.1.idx510.i.i, 8
  br i1 %.not.i167.i.i, label %bb.bn, label %.thread638.i.i

.thread638.i.i:                                   ; preds = %.lr.ph515.i.i
  %i.qe = lshr i32 %.sroa.27.1509.i.i, 3
  %i.qf = zext nneg i32 %i.qe to i64
  %.sroa.61222.1.add412.i.i = sub nuw nsw i64 %.sroa.61222.1.idx510.i.i, %i.qf ; 3 uses
  %.ptr416.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.61222.1.add412.i.i
  %i.qg = and i32 %.sroa.27.1509.i.i, 7
  %.val30.i168.i.i = load i64, ptr %.ptr416.i.i, align 1
  %i.qh = icmp eq i64 %.sroa.61222.1.add412.i.i, 0
  br label %BIT_endOfDStream.exit176.thread.i.i

bb.bn:                                            ; preds = %.lr.ph515.i.i
  %i.qi = icmp eq i64 %.sroa.61222.1.idx510.i.i, 0
  br i1 %i.qi, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qj = lshr i32 %.sroa.27.1509.i.i, 3
  %i.qk = zext nneg i32 %i.qj to i64
  %.024.i170417.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.1.idx510.i.i, i64 %i.qk) ; 2 uses
  %.024.i170.i.i = trunc i64 %.024.i170417.i.i to i32
  %i.ql = and i64 %.024.i170417.i.i, 4294967295
  %.sroa.61222.1.add.i.i = sub nsw i64 %.sroa.61222.1.idx510.i.i, %i.ql ; 2 uses
  %.ptr415.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.1.add.i.i
  %i.qm = shl i32 %.024.i170.i.i, 3
  %i.qn = sub i32 %.sroa.27.1509.i.i, %i.qm
  %.val.i172.i.i = load i64, ptr %.ptr415.i.i, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0216.7.ph.i.i = phi i64 [ %.sroa.0216.1508.i.i, %bb.bn ], [ %.val.i172.i.i, %bb.bo ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1509.i.i, %bb.bn ], [ %i.qn, %bb.bo ] ; 2 uses
  %.sroa.61222.9.ph.idx.i.i = phi i64 [ 0, %bb.bn ], [ %.sroa.61222.1.add.i.i, %bb.bo ] ; 2 uses
  %i.qo = icmp eq i64 %.sroa.61222.9.ph.idx.i.i, 0 ; 2 uses
  %.not418.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond430.i.i = and i1 %.not418.i.i, %i.qo
  %.not419.i.i = icmp eq i64 %.sroa.0208.1511.i.i, 0
  %or.cond431.i.i = select i1 %or.cond430.i.i, i1 %.not419.i.i, i1 false
  br i1 %or.cond431.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit176.thread.i.i

BIT_endOfDStream.exit176.thread.i.i:              ; preds = %bb.bp, %.thread638.i.i
  %i.qp = phi i1 [ %i.qh, %.thread638.i.i ], [ %i.qo, %bb.bp ]
  %.sroa.61222.9.ph.idx648.i.i = phi i64 [ %.sroa.61222.1.add412.i.i, %.thread638.i.i ], [ %.sroa.61222.9.ph.idx.i.i, %bb.bp ] ; 5 uses
  %.sroa.27.9.ph647.i.i = phi i32 [ %i.qg, %.thread638.i.i ], [ %.sroa.27.9.ph.i.i, %bb.bp ] ; 2 uses
  %.sroa.0216.7.ph646.i.i = phi i64 [ %.val30.i168.i.i, %.thread638.i.i ], [ %.sroa.0216.7.ph.i.i, %bb.bp ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.sroa.0208.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i177.i.i = load i16, ptr %i.qq, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i178.i.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 2
  %.sroa.4.0.copyload.i179.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i178.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i180.i.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 3
  %.sroa.5.0.copyload.i181.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i180.i.i, align 1, !tbaa !10
  %i.qr = zext i8 %.sroa.5.0.copyload.i181.i.i to i32 ; 2 uses
  %i.qs = and i32 %.sroa.27.9.ph647.i.i, 63
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = shl i64 %.sroa.0216.7.ph646.i.i, %i.qt
  %i.qv = lshr i64 %i.qu, 1
  %i.qw = and i32 %i.qr, 63
  %i.qx = xor i32 %i.qw, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = lshr i64 %i.qv, %i.qy
  %i.ra = add i32 %.sroa.27.9.ph647.i.i, %i.qr    ; 7 uses
  %i.rb = zext i16 %.sroa.0.0.copyload.i177.i.i to i64
  %i.rc = add nuw i64 %i.qz, %i.rb                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i513.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i179.i.i, ptr %.1.ptr.ptr.i514.i.i, align 1, !tbaa !10
  %i.rd = icmp ugt i32 %i.ra, 64
  br i1 %i.rd, label %BIT_reloadDStream.exit175.split.loop.exit485.i.i, label %bb.bq

bb.bq:                                            ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.not.i184.i.i = icmp slt i64 %.sroa.61222.9.ph.idx648.i.i, 8
  br i1 %.not.i184.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.re = lshr i32 %i.ra, 3
  %i.rf = zext nneg i32 %i.re to i64
  %.sroa.61222.9.ph.add411.i.i = sub nuw nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.rf ; 2 uses
  %.ptr414.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.61222.9.ph.add411.i.i
  %i.rg = and i32 %i.ra, 7
  %.val30.i185.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.qp, label %BIT_reloadDStream.exit192.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rh = lshr i32 %i.ra, 3
  %i.ri = zext nneg i32 %i.rh to i64
  %.024.i187420.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.9.ph.idx648.i.i, i64 %i.ri) ; 2 uses
  %.024.i187.i.i = trunc i64 %.024.i187420.i.i to i32
  %i.rj = and i64 %.024.i187420.i.i, 4294967295
  %.sroa.61222.9.ph.add.i.i = sub nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.rj ; 2 uses
  %.ptr413.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.9.ph.add.i.i
  %i.rk = shl i32 %.024.i187.i.i, 3
  %i.rl = sub i32 %i.ra, %i.rk
  %.val.i189.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

BIT_reloadDStream.exit192.i.i:                    ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0216.8.i.i = phi i64 [ %.val30.i185.i.i, %bb.br ], [ %.val.i189.i.i, %bb.bt ], [ %.sroa.0216.7.ph646.i.i, %bb.bs ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.rg, %bb.br ], [ %i.rl, %bb.bt ], [ %i.ra, %bb.bs ] ; 4 uses
  %.sroa.61222.10.idx.i.i = phi i64 [ %.sroa.61222.9.ph.add411.i.i, %bb.br ], [ %.sroa.61222.9.ph.add.i.i, %bb.bt ], [ 0, %bb.bs ] ; 4 uses
  %i.rm = icmp eq i64 %.1.idx.i513.i.i, 254
  br i1 %i.rm, label %BIT_reloadDStream.exit175.split.loop.exit497.i.i, label %bb.bu

bb.bu:                                            ; preds = %BIT_reloadDStream.exit192.i.i
  %i.rn = icmp eq i64 %.sroa.61222.10.idx.i.i, 0
  %.not421.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond432.i.i = and i1 %.not421.i.i, %i.rn
  %.not422.i.i = icmp eq i64 %.sroa.0.1512.i.i, 0
  %or.cond433.i.i = select i1 %or.cond432.i.i, i1 %.not422.i.i, i1 false
  br i1 %or.cond433.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit193.thread.i.i

BIT_endOfDStream.exit193.thread.i.i:              ; preds = %bb.bu
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.sroa.0.1512.i.i ; 3 uses
  %.sroa.0.0.copyload.i194.i.i = load i16, ptr %i.ro, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 2
  %.sroa.4.0.copyload.i196.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i195.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i197.i.i = getelementptr inbounds nuw i8, ptr %i.ro, i64 3
  %.sroa.5.0.copyload.i198.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i197.i.i, align 1, !tbaa !10
  %i.rp = zext i8 %.sroa.5.0.copyload.i198.i.i to i32 ; 2 uses
  %i.rq = and i32 %.sroa.27.10.i.i, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = shl i64 %.sroa.0216.8.i.i, %i.rr
  %i.rt = lshr i64 %i.rs, 1
  %i.ru = and i32 %i.rp, 63
  %i.rv = xor i32 %i.ru, 63
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = lshr i64 %i.rt, %i.rw
  %i.ry = add i32 %.sroa.27.10.i.i, %i.rp         ; 3 uses
  %i.rz = zext i16 %.sroa.0.0.copyload.i194.i.i to i64
  %i.sa = add nuw i64 %i.rx, %i.rz                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i513.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i196.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !10
  %i.sb = icmp ugt i32 %i.ry, 64
  br i1 %i.sb, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph515.i.i

BIT_reloadDStream.exit175.split.loop.exit485.i.i: ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.sroa.61222.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.9.ph.idx648.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit491.i.i: ; preds = %bb.bm, %BIT_endOfDStream.exit193.thread.i.i, %.preheader.i.i, %FSE_initDState.exit129.i.i
  %.sroa.61222.1.idx.lcssa.i.i = phi i64 [ %.sroa.61222.8.idx.i.i, %.preheader.i.i ], [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.7.idx.i.i, %FSE_initDState.exit129.i.i ], [ %.sroa.61222.8.idx.i.i, %bb.bm ]
  %.sroa.0.1.lcssa.ph492.i.i = phi i64 [ %.sroa.0.0.i104.i, %.preheader.i.i ], [ %i.sa, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.na, %FSE_initDState.exit129.i.i ], [ %i.qb, %bb.bm ]
  %.sroa.27.2.ph493.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i.i ], [ %i.ry, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.7.i.i, %FSE_initDState.exit129.i.i ], [ %i.pz, %bb.bm ]
  %.sroa.0208.2.ph495.i.i = phi i64 [ %.sroa.0208.0.i103.i, %.preheader.i.i ], [ %i.rc, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.mj, %FSE_initDState.exit129.i.i ], [ %i.pm, %bb.bm ]
  %.2.idx.i.ph496.i.i = phi i64 [ %.036.idx.i.i105.i, %.preheader.i.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ 0, %FSE_initDState.exit129.i.i ], [ %.036.add.i.i.i, %bb.bm ]
  %.sroa.61222.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit497.i.i: ; preds = %BIT_reloadDStream.exit192.i.i
  %.sroa.61222.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bz, i64 %.sroa.61222.10.idx.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.i.i:                    ; preds = %bb.bu, %bb.bp, %BIT_reloadDStream.exit175.split.loop.exit497.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph492.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.sroa.0.1512.i.i, %bb.bp ], [ 0, %bb.bu ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph493.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.ra, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 64, %bb.bp ], [ 64, %bb.bu ]
  %.sroa.61222.2.i.i = phi ptr [ %.sroa.61222.1.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.61222.10.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.61222.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %i.bz, %bb.bp ], [ %i.bz, %bb.bu ]
  %.sroa.0208.2.i.i = phi i64 [ %.sroa.0208.2.ph495.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %i.rc, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.rc, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 0, %bb.bp ], [ %i.rc, %bb.bu ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph496.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ 255, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.1.idx.i513.i.i, %bb.bp ], [ %.add51.i.i.i, %bb.bu ] ; 2 uses
  %i.sc = icmp eq ptr %.sroa.61222.2.i.i, %i.bz
  %.not423.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond434.i.i = and i1 %.not423.i.i, %i.sc
  %.not424.i.i = icmp eq i64 %.sroa.0208.2.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  %.not425.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond436.i.i = select i1 %or.cond435.i.i, i1 %.not425.i.i, i1 false
  br i1 %or.cond436.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit201.thread.i.i

BIT_endOfDStream.exit201.thread.i.i:              ; preds = %BIT_reloadDStream.exit175.i.i
  %i.sd = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.sd, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.u, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit106.thread.i.i, %BIT_initDStream.exit111.i.i, %BIT_endOfDStream.exit201.thread.i.i, %bb.az, %bb.m, %bb.ar
  %.0.i.ph = phi i64 [ -1, %bb.ar ], [ -1, %bb.m ], [ -1, %bb.az ], [ %..i.i.i, %BIT_endOfDStream.exit201.thread.i.i ], [ %i.by, %BIT_initDStream.exit111.i.i ], [ %..i23.i.i, %BIT_endOfDStream.exit106.thread.i.i ], [ %i.by, %BIT_initDStream.exit.i.i ], [ -1, %bb.u ], [ -72, %bb.i ], [ %i.bs, %bb.h ], [ -72, %bb.g ], [ %i.bw, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit81.i.i, %BIT_reloadDStream.exit175.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit175.i.i ], [ %.2.idx.i19.i.i, %BIT_reloadDStream.exit81.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.se = icmp ult i64 %.0.i, -119
  br i1 %i.se, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.l, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.f, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070286 = phi i64 [ %i.o, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074284 = phi i64 [ %i.m, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.bv
  %i.sf = phi i64 [ %i.st, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.sr, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.ss, %bb.bv ], [ 0, %.lr.ph166.preheader ]
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 %i.sf ; 2 uses
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !10  ; 2 uses
  %i.si = icmp ugt i8 %i.sh, 15
  br i1 %i.si, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph166
  %i.sj = zext nneg i8 %i.sh to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sj ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !50
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !50
  %i.sn = load i8, ptr %i.sg, align 1, !tbaa !10
  %i.so = zext nneg i8 %i.sn to i32
  %i.sp = shl nuw i32 1, %i.so
  %i.sq = ashr i32 %i.sp, 1
  %i.sr = add i32 %i.sq, %.069165                 ; 4 uses
  %i.ss = add i32 %.173164, 1                     ; 2 uses
  %i.st = zext i32 %i.ss to i64                   ; 2 uses
  %i.su = icmp ugt i64 %.074284, %i.st
  br i1 %i.su, label %.lr.ph166, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.bv
  %i.sv = icmp eq i32 %i.sr, 0
  br i1 %i.sv, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge
  %i.sw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sr, i1 true) ; 2 uses
  %i.sx = xor i32 %i.sw, 31                       ; 2 uses
  %i.sy = sub nuw nsw i32 32, %i.sw
  %i.sz = icmp samesign ugt i32 %i.sx, 15
  br i1 %i.sz, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ta = shl nuw nsw i32 2, %i.sx
  %i.tb = sub i32 %i.ta, %i.sr                    ; 2 uses
  %i.tc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tb, i1 true) ; 2 uses
  %i.td = lshr exact i32 -2147483648, %i.tc
  %.not84 = icmp eq i32 %i.td, %i.tb
  br i1 %.not84, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.te = sub nuw nsw i32 32, %i.tc               ; 2 uses
  %i.tf = trunc nuw nsw i32 %i.te to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 %.074284
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !10
  %i.th = zext nneg i32 %i.te to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.th ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !50
  %i.tk = add i32 %i.tj, 1
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !50
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !50 ; 2 uses
  %i.tn = icmp ugt i32 %i.tm, 1
  %i.to = and i32 %i.tm, 1
  %.not85 = icmp eq i32 %i.to, 0
  %or.cond = and i1 %i.tn, %.not85
  br i1 %or.cond, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.tp = trunc nuw i64 %.074284 to i32
  %i.tq = add i32 %i.tp, 1
  store i32 %i.tq, ptr %2, align 4, !tbaa !50
  store i32 %i.sy, ptr %3, align 4, !tbaa !50
  %i.tr = add nuw nsw i64 %.070286, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.bx, %bb.by, %bb.bw, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.bz
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.by ], [ %i.tr, %bb.bz ], [ -20, %bb.bx ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.bw ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @FSE_readNCount(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ult i64 %4, 4
  br i1 %i.b, label %.critedge158, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val160 = load i32, ptr %3, align 1            ; 2 uses
  %i.c = and i32 %.val160, 15                     ; 4 uses
  %i.d = icmp samesign ugt i32 %i.c, 10
  br i1 %i.d, label %.critedge158, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.b
  %i.e = add nuw nsw i32 %i.c, 5
  store i32 %i.e, ptr %2, align 4, !tbaa !50
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !50     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %._crit_edge191
  %.0110201 = phi i1 [ true, %.lr.ph203 ], [ %i.bp, %._crit_edge191 ]
  %.0111200 = phi i32 [ 0, %.lr.ph203 ], [ %i.bm, %._crit_edge191 ] ; 8 uses
  %.0115199 = phi i32 [ 4, %.lr.ph203 ], [ %.8, %._crit_edge191 ] ; 3 uses
  %.0119198 = phi i32 [ %i.i, %.lr.ph203 ], [ %i.cc, %._crit_edge191 ] ; 4 uses
  %.0126197 = phi i32 [ %i.f, %.lr.ph203 ], [ %.1127.lcssa, %._crit_edge191 ] ; 6 uses
  %.0128196 = phi i32 [ %i.g, %.lr.ph203 ], [ %i.bl, %._crit_edge191 ] ; 2 uses
  %.0129195 = phi i32 [ %i.h, %.lr.ph203 ], [ %.1130.lcssa, %._crit_edge191 ] ; 4 uses
  %.0131194 = phi ptr [ %3, %.lr.ph203 ], [ %.6137, %._crit_edge191 ] ; 3 uses
  %.not = icmp ugt i32 %.0111200, %i.j
  br i1 %.not, label %.critedge158, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.0110201, label %bb.i, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  %i.o = and i32 %.0119198, 65535
  %i.p = icmp eq i32 %i.o, 65535
  br i1 %i.p, label %.lr.ph, label %.preheader162

.preheader162:                                    ; preds = %bb.g, %.preheader163
  %.1132.lcssa = phi ptr [ %.0131194, %.preheader163 ], [ %.2133, %bb.g ] ; 4 uses
  %.1120.lcssa = phi i32 [ %.0119198, %.preheader163 ], [ %.2121, %bb.g ] ; 3 uses
  %.1116.lcssa = phi i32 [ %.0115199, %.preheader163 ], [ %.2117, %bb.g ] ; 2 uses
  %.0107.lcssa = phi i32 [ %.0111200, %.preheader163 ], [ %i.s, %bb.g ] ; 2 uses
  %i.q = and i32 %.1120.lcssa, 3                  ; 2 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %.lr.ph178, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader163, %bb.g
  %.0107171 = phi i32 [ %i.s, %bb.g ], [ %.0111200, %.preheader163 ]
  %.1116170 = phi i32 [ %.2117, %bb.g ], [ %.0115199, %.preheader163 ] ; 3 uses
  %.1120169 = phi i32 [ %.2121, %bb.g ], [ %.0119198, %.preheader163 ]
  %.1132168 = phi ptr [ %.2133, %bb.g ], [ %.0131194, %.preheader163 ] ; 3 uses
  %i.s = add i32 %.0107171, 24                    ; 2 uses
  %i.t = icmp ult ptr %.1132168, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.1132168, i64 2 ; 2 uses
  %.val159 = load i32, ptr %i.u, align 1
  %i.v = lshr i32 %.val159, %.1116170
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = lshr i32 %.1120169, 16
  %i.x = add nsw i32 %.1116170, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2133 = phi ptr [ %i.u, %bb.e ], [ %.1132168, %bb.f ] ; 2 uses
  %.2121 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2117 = phi i32 [ %.1116170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2121, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !120

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3122.lcssa = phi i32 [ %.1120.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
end_hunk_2
