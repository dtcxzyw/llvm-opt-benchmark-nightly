Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/hamming?download=true
inline.NumInlined: 1832
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_16HammingComputer4EE7bs_addnEjjRKS3_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.not385 = icmp eq i32 %i.c, 0
  %.not119 = icmp eq ptr %7, null                 ; 9 uses
  %i.d = zext i32 %4 to i64                       ; 11 uses
  %i.e = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.f = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.g = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d ; 5 uses
  %.not386 = icmp eq i32 %i.c, %1
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = and i64 %i.h, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.vl, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.j, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.k, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.l, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.m, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.n, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.o, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.p, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.q, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.r, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.s, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.t, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.u, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.v, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.w, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.az = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.ba = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bc = add <4 x i32> %i.az, %i.bb
  store <4 x i32> %i.bc, ptr %9, align 16, !tbaa !91
  %i.bd = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.be = add <4 x i32> %i.bd, %i.bb
  store <4 x i32> %i.be, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bf = load <4 x i32>, ptr %i.k, align 16, !tbaa !91
  %i.bg = add <4 x i32> %i.bf, %i.bb
  store <4 x i32> %i.bg, ptr %i.k, align 16, !tbaa !91
  %i.bh = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bi = add <4 x i32> %i.bh, %i.bb
  store <4 x i32> %i.bi, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bj = add i32 %.pre, 8
  %i.bk = load <4 x i32>, ptr %i.m, align 16, !tbaa !91
  %i.bl = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %i.bm = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bn = add <4 x i32> %i.bk, %i.bm
  store <4 x i32> %i.bn, ptr %i.m, align 16, !tbaa !91
  %i.bo = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bp = add <4 x i32> %i.bo, %i.bm
  store <4 x i32> %i.bp, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bq = load <4 x i32>, ptr %i.o, align 16, !tbaa !91
  %i.br = add <4 x i32> %i.bq, %i.bm
  store <4 x i32> %i.br, ptr %i.o, align 16, !tbaa !91
  %i.bs = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bt = add <4 x i32> %i.bs, %i.bm
  store <4 x i32> %i.bt, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bu = add i32 %.pre, 16
  %i.bv = load <4 x i32>, ptr %i.q, align 16, !tbaa !91
  %i.bw = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %i.bx = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.by = add <4 x i32> %i.bv, %i.bx
  store <4 x i32> %i.by, ptr %i.q, align 16, !tbaa !91
  %i.bz = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.ca = add <4 x i32> %i.bz, %i.bx
  store <4 x i32> %i.ca, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cb = load <4 x i32>, ptr %i.s, align 16, !tbaa !91
  %i.cc = add <4 x i32> %i.cb, %i.bx
  store <4 x i32> %i.cc, ptr %i.s, align 16, !tbaa !91
  %i.cd = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.ce = add <4 x i32> %i.cd, %i.bx
  store <4 x i32> %i.ce, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cf = add i32 %.pre, 24
  %i.cg = load <4 x i32>, ptr %i.u, align 16, !tbaa !91
  %i.ch = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cj = add <4 x i32> %i.cg, %i.ci
  store <4 x i32> %i.cj, ptr %i.u, align 16, !tbaa !91
  %i.ck = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cl = add <4 x i32> %i.ck, %i.ci
  store <4 x i32> %i.cl, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cm = load <4 x i32>, ptr %i.w, align 16, !tbaa !91
  %i.cn = add <4 x i32> %i.cm, %i.ci
  store <4 x i32> %i.cn, ptr %i.w, align 16, !tbaa !91
  %i.co = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cp = add <4 x i32> %i.co, %i.ci
  store <4 x i32> %i.cp, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.g, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.cr, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.cy, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cx, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cw, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cv, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cu, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.ct, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.cs, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cq = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cr = add nuw i32 %.0105367, 32               ; 2 uses
  %i.cs = add nuw i32 %.sroa.6201.0360, 32
  %i.ct = add nuw i32 %.sroa.10203.0361, 32
  %i.cu = add nuw i32 %.sroa.14205.0362, 32
  %i.cv = add nuw i32 %.sroa.18.0363, 32
  %i.cw = add nuw i32 %.sroa.22.0364, 32
  %i.cx = add nuw i32 %.sroa.26.0365, 32
  %i.cy = add nuw i32 %.sroa.30.0366, 32
  %i.cz = icmp ult i32 %i.cr, %i.c
  br i1 %i.cz, label %.preheader331, label %.preheader335, !llvm.loop !115

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.da = shl i32 %indvars.iv.tr, 3
  %i.db = add i32 %i.cq, %i.da                    ; 15 uses
  %.pre445 = zext i32 %i.db to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge441, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dc = load ptr, ptr %7, align 8, !tbaa !93
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre445)
  br i1 %i.de, label %._crit_edge441, label %.thread

.thread:                                          ; preds = %bb.d
  %i.df = add i32 %i.db, 1
  br label %bb.e

._crit_edge441:                                   ; preds = %bb.c, %bb.d
  %i.dg = shl nuw nsw i64 %.pre445, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = load i32, ptr %2, align 4, !tbaa !83
  %i.dk = xor i32 %i.dj, %i.di
  %i.dl = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dk) ; 2 uses
  %i.dm = add i32 %i.db, 1                        ; 2 uses
  br i1 %.not119, label %._crit_edge440, label %bb.e

._crit_edge440:                                   ; preds = %._crit_edge441
  %.pre447 = zext i32 %i.dm to i64
  br label %bb.f

bb.e:                                             ; preds = %.thread, %._crit_edge441
  %i.dn = phi i32 [ %i.df, %.thread ], [ %i.dm, %._crit_edge441 ]
  %i.do = phi i1 [ true, %.thread ], [ false, %._crit_edge441 ]
  %.sroa.0.0544 = phi i32 [ 2147483647, %.thread ], [ %i.dl, %._crit_edge441 ] ; 2 uses
  %i.dp = zext i32 %i.dn to i64                   ; 2 uses
  %i.dq = load ptr, ptr %7, align 8, !tbaa !93
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef zeroext i1 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.dp)
  br i1 %i.ds, label %bb.f, label %.thread545

.thread545:                                       ; preds = %bb.e
  %i.dt = add i32 %i.db, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %._crit_edge440
  %.sroa.0.0543 = phi i32 [ %i.dl, %._crit_edge440 ], [ %.sroa.0.0544, %bb.e ] ; 2 uses
  %.pre-phi448 = phi i64 [ %.pre447, %._crit_edge440 ], [ %i.dp, %bb.e ]
  %i.du = shl nuw nsw i64 %.pre-phi448, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12
  %i.dx = load i32, ptr %2, align 4, !tbaa !83
  %i.dy = xor i32 %i.dx, %i.dw
  %i.dz = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dy) ; 2 uses
  %i.ea = add i32 %i.db, 2                        ; 2 uses
  br i1 %.not119, label %._crit_edge439, label %bb.g

._crit_edge439:                                   ; preds = %bb.f
  %.pre449 = zext i32 %i.ea to i64
  br label %bb.h

bb.g:                                             ; preds = %.thread545, %bb.f
  %i.eb = phi i32 [ %i.dt, %.thread545 ], [ %i.ea, %bb.f ]
  %.1.1555 = phi i1 [ %i.do, %.thread545 ], [ false, %bb.f ]
  %.sroa.5.0554 = phi i32 [ 2147483647, %.thread545 ], [ %i.dz, %bb.f ] ; 2 uses
  %.sroa.0.0542551 = phi i32 [ %.sroa.0.0544, %.thread545 ], [ %.sroa.0.0543, %bb.f ] ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %7, align 8, !tbaa !93
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.ec)
  br i1 %i.ef, label %bb.h, label %.thread556

.thread556:                                       ; preds = %bb.g
  %i.eg = add i32 %i.db, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %._crit_edge439
  %.sroa.5.0553 = phi i32 [ %i.dz, %._crit_edge439 ], [ %.sroa.5.0554, %bb.g ] ; 2 uses
  %.sroa.0.0542550 = phi i32 [ %.sroa.0.0543, %._crit_edge439 ], [ %.sroa.0.0542551, %bb.g ] ; 2 uses
  %.pre-phi450 = phi i64 [ %.pre449, %._crit_edge439 ], [ %i.ec, %bb.g ]
  %i.eh = shl nuw nsw i64 %.pre-phi450, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !12
  %i.ek = load i32, ptr %2, align 4, !tbaa !83
  %i.el = xor i32 %i.ek, %i.ej
  %i.em = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.el) ; 2 uses
  %i.en = add i32 %i.db, 3                        ; 2 uses
  br i1 %.not119, label %._crit_edge438, label %bb.i

._crit_edge438:                                   ; preds = %bb.h
  %.pre451 = zext i32 %i.en to i64
  br label %bb.j

bb.i:                                             ; preds = %.thread556, %bb.h
  %i.eo = phi i32 [ %i.eg, %.thread556 ], [ %i.en, %bb.h ]
  %.1.2570 = phi i1 [ %.1.1555, %.thread556 ], [ false, %bb.h ]
  %.sroa.8.0569 = phi i32 [ 2147483647, %.thread556 ], [ %i.em, %bb.h ] ; 2 uses
  %.sroa.0.0542549566 = phi i32 [ %.sroa.0.0542551, %.thread556 ], [ %.sroa.0.0542550, %bb.h ] ; 2 uses
  %.sroa.5.0552563 = phi i32 [ %.sroa.5.0554, %.thread556 ], [ %.sroa.5.0553, %bb.h ] ; 2 uses
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = load ptr, ptr %7, align 8, !tbaa !93
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.ep)
  br i1 %i.es, label %bb.j, label %.thread571

.thread571:                                       ; preds = %bb.i
  %i.et = add i32 %i.db, 4
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %._crit_edge438
  %.sroa.8.0568 = phi i32 [ %i.em, %._crit_edge438 ], [ %.sroa.8.0569, %bb.i ] ; 2 uses
  %.sroa.0.0542549565 = phi i32 [ %.sroa.0.0542550, %._crit_edge438 ], [ %.sroa.0.0542549566, %bb.i ] ; 2 uses
  %.sroa.5.0552562 = phi i32 [ %.sroa.5.0553, %._crit_edge438 ], [ %.sroa.5.0552563, %bb.i ] ; 2 uses
  %.pre-phi452 = phi i64 [ %.pre451, %._crit_edge438 ], [ %i.ep, %bb.i ]
  %i.eu = shl nuw nsw i64 %.pre-phi452, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %i.ex = load i32, ptr %2, align 4, !tbaa !83
  %i.ey = xor i32 %i.ex, %i.ew
  %i.ez = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ey) ; 2 uses
  %i.fa = add i32 %i.db, 4                        ; 2 uses
  br i1 %.not119, label %._crit_edge437, label %bb.k

._crit_edge437:                                   ; preds = %bb.j
  %.pre453 = zext i32 %i.fa to i64
  br label %bb.l

bb.k:                                             ; preds = %.thread571, %bb.j
  %i.fb = phi i32 [ %i.et, %.thread571 ], [ %i.fa, %bb.j ]
  %.1.3589 = phi i1 [ %.1.2570, %.thread571 ], [ false, %bb.j ]
  %.sroa.11.0588 = phi i32 [ 2147483647, %.thread571 ], [ %i.ez, %bb.j ] ; 2 uses
  %.sroa.5.0552561585 = phi i32 [ %.sroa.5.0552563, %.thread571 ], [ %.sroa.5.0552562, %bb.j ] ; 2 uses
  %.sroa.0.0542549564582 = phi i32 [ %.sroa.0.0542549566, %.thread571 ], [ %.sroa.0.0542549565, %bb.j ] ; 2 uses
  %.sroa.8.0567579 = phi i32 [ %.sroa.8.0569, %.thread571 ], [ %.sroa.8.0568, %bb.j ] ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = load ptr, ptr %7, align 8, !tbaa !93
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call noundef zeroext i1 %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.fc)
  br i1 %i.ff, label %bb.l, label %.thread590

.thread590:                                       ; preds = %bb.k
  %i.fg = add i32 %i.db, 5
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %._crit_edge437
  %.sroa.11.0587 = phi i32 [ %i.ez, %._crit_edge437 ], [ %.sroa.11.0588, %bb.k ] ; 2 uses
  %.sroa.5.0552561584 = phi i32 [ %.sroa.5.0552562, %._crit_edge437 ], [ %.sroa.5.0552561585, %bb.k ] ; 2 uses
  %.sroa.0.0542549564581 = phi i32 [ %.sroa.0.0542549565, %._crit_edge437 ], [ %.sroa.0.0542549564582, %bb.k ] ; 2 uses
  %.sroa.8.0567578 = phi i32 [ %.sroa.8.0568, %._crit_edge437 ], [ %.sroa.8.0567579, %bb.k ] ; 2 uses
  %.pre-phi454 = phi i64 [ %.pre453, %._crit_edge437 ], [ %i.fc, %bb.k ]
  %i.fh = shl nuw nsw i64 %.pre-phi454, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fk = load i32, ptr %2, align 4, !tbaa !83
  %i.fl = xor i32 %i.fk, %i.fj
  %i.fm = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fl) ; 2 uses
  %i.fn = add i32 %i.db, 5                        ; 2 uses
  br i1 %.not119, label %._crit_edge436, label %bb.m

._crit_edge436:                                   ; preds = %bb.l
  %.pre455 = zext i32 %i.fn to i64
  br label %bb.n

bb.m:                                             ; preds = %.thread590, %bb.l
  %i.fo = phi i32 [ %i.fg, %.thread590 ], [ %i.fn, %bb.l ]
  %.1.4612 = phi i1 [ %.1.3589, %.thread590 ], [ false, %bb.l ]
  %.sroa.14.0611 = phi i32 [ 2147483647, %.thread590 ], [ %i.fm, %bb.l ] ; 2 uses
  %.sroa.8.0567577608 = phi i32 [ %.sroa.8.0567579, %.thread590 ], [ %.sroa.8.0567578, %bb.l ] ; 2 uses
  %.sroa.0.0542549564580605 = phi i32 [ %.sroa.0.0542549564582, %.thread590 ], [ %.sroa.0.0542549564581, %bb.l ] ; 2 uses
  %.sroa.5.0552561583602 = phi i32 [ %.sroa.5.0552561585, %.thread590 ], [ %.sroa.5.0552561584, %bb.l ] ; 2 uses
  %.sroa.11.0586599 = phi i32 [ %.sroa.11.0588, %.thread590 ], [ %.sroa.11.0587, %bb.l ] ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = load ptr, ptr %7, align 8, !tbaa !93
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.fp)
  br i1 %i.fs, label %bb.n, label %.thread613

.thread613:                                       ; preds = %bb.m
  %i.ft = add i32 %i.db, 6
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %._crit_edge436
  %.sroa.14.0610 = phi i32 [ %i.fm, %._crit_edge436 ], [ %.sroa.14.0611, %bb.m ] ; 2 uses
  %.sroa.8.0567577607 = phi i32 [ %.sroa.8.0567578, %._crit_edge436 ], [ %.sroa.8.0567577608, %bb.m ] ; 2 uses
  %.sroa.0.0542549564580604 = phi i32 [ %.sroa.0.0542549564581, %._crit_edge436 ], [ %.sroa.0.0542549564580605, %bb.m ] ; 2 uses
  %.sroa.5.0552561583601 = phi i32 [ %.sroa.5.0552561584, %._crit_edge436 ], [ %.sroa.5.0552561583602, %bb.m ] ; 2 uses
  %.sroa.11.0586598 = phi i32 [ %.sroa.11.0587, %._crit_edge436 ], [ %.sroa.11.0586599, %bb.m ] ; 2 uses
  %.pre-phi456 = phi i64 [ %.pre455, %._crit_edge436 ], [ %i.fp, %bb.m ]
  %i.fu = shl nuw nsw i64 %.pre-phi456, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !12
  %i.fx = load i32, ptr %2, align 4, !tbaa !83
  %i.fy = xor i32 %i.fx, %i.fw
  %i.fz = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fy) ; 2 uses
  %i.ga = add i32 %i.db, 6                        ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.o

._crit_edge435:                                   ; preds = %bb.n
  %.pre457 = zext i32 %i.ga to i64
  br label %bb.p

bb.o:                                             ; preds = %.thread613, %bb.n
  %i.gb = phi i32 [ %i.ft, %.thread613 ], [ %i.ga, %bb.n ]
end_hunk_0
begin_hunk_1_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_16HammingComputer8EE7bs_addnEjjRKS3_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = zext i32 %4 to i64                       ; 11 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.g = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.h = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not386 = icmp eq i32 %i.d, %1
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = and i64 %i.i, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.sg, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.k, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.l, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.m, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.n, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.o, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.p, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.q, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.s, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.t, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.u, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.v, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.w, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.x, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.ba = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bb = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bd = add <4 x i32> %i.ba, %i.bc
  store <4 x i32> %i.bd, ptr %9, align 16, !tbaa !91
  %i.be = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bf = add <4 x i32> %i.be, %i.bc
  store <4 x i32> %i.bf, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bg = load <4 x i32>, ptr %i.l, align 16, !tbaa !91
  %i.bh = add <4 x i32> %i.bg, %i.bc
  store <4 x i32> %i.bh, ptr %i.l, align 16, !tbaa !91
  %i.bi = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bj = add <4 x i32> %i.bi, %i.bc
  store <4 x i32> %i.bj, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bk = add i32 %.pre, 8
  %i.bl = load <4 x i32>, ptr %i.n, align 16, !tbaa !91
  %i.bm = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bo = add <4 x i32> %i.bl, %i.bn
  store <4 x i32> %i.bo, ptr %i.n, align 16, !tbaa !91
  %i.bp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bq = add <4 x i32> %i.bp, %i.bn
  store <4 x i32> %i.bq, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.br = load <4 x i32>, ptr %i.p, align 16, !tbaa !91
  %i.bs = add <4 x i32> %i.br, %i.bn
  store <4 x i32> %i.bs, ptr %i.p, align 16, !tbaa !91
  %i.bt = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bu = add <4 x i32> %i.bt, %i.bn
  store <4 x i32> %i.bu, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bv = add i32 %.pre, 16
  %i.bw = load <4 x i32>, ptr %i.r, align 16, !tbaa !91
  %i.bx = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bz = add <4 x i32> %i.bw, %i.by
  store <4 x i32> %i.bz, ptr %i.r, align 16, !tbaa !91
  %i.ca = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cb = add <4 x i32> %i.ca, %i.by
  store <4 x i32> %i.cb, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cc = load <4 x i32>, ptr %i.t, align 16, !tbaa !91
  %i.cd = add <4 x i32> %i.cc, %i.by
  store <4 x i32> %i.cd, ptr %i.t, align 16, !tbaa !91
  %i.ce = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cf = add <4 x i32> %i.ce, %i.by
  store <4 x i32> %i.cf, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cg = add i32 %.pre, 24
  %i.ch = load <4 x i32>, ptr %i.v, align 16, !tbaa !91
  %i.ci = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = add <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.v, align 16, !tbaa !91
  %i.cl = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cm = add <4 x i32> %i.cl, %i.cj
  store <4 x i32> %i.cm, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cn = load <4 x i32>, ptr %i.x, align 16, !tbaa !91
  %i.co = add <4 x i32> %i.cn, %i.cj
  store <4 x i32> %i.co, ptr %i.x, align 16, !tbaa !91
  %i.cp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cq = add <4 x i32> %i.cp, %i.cj
  store <4 x i32> %i.cq, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.h, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.cs, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.cz, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cy, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cx, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cw, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cv, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.cu, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.ct, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cr = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cs = add nuw i32 %.0105367, 32               ; 2 uses
  %i.ct = add nuw i32 %.sroa.6201.0360, 32
  %i.cu = add nuw i32 %.sroa.10203.0361, 32
  %i.cv = add nuw i32 %.sroa.14205.0362, 32
  %i.cw = add nuw i32 %.sroa.18.0363, 32
  %i.cx = add nuw i32 %.sroa.22.0364, 32
  %i.cy = add nuw i32 %.sroa.26.0365, 32
  %i.cz = add nuw i32 %.sroa.30.0366, 32
  %i.da = icmp ult i32 %i.cs, %i.d
  br i1 %i.da, label %.preheader331, label %.preheader335, !llvm.loop !143

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.db = shl i32 %indvars.iv.tr, 3
  %i.dc = add i32 %i.cr, %i.db
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.dd = icmp eq i8 %.1, 0
  br i1 %i.dd, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.h
  %.0102340 = phi i64 [ 0, %bb.c ], [ %i.dt, %bb.h ] ; 4 uses
  %.0103339 = phi i8 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %i.de = trunc nuw nsw i64 %.0102340 to i32
  %i.df = add i32 %i.dc, %i.de
  %.pre439 = zext i32 %i.df to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = load ptr, ptr %7, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre439)
  br i1 %i.di, label %._crit_edge435, label %bb.g

._crit_edge435:                                   ; preds = %bb.e, %bb.f
  %i.dj = shl nuw nsw i64 %.pre439, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !31
  %i.dm = load i64, ptr %2, align 8, !tbaa !122
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dn)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !12
  %i.dr = add i8 %.0103339, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 2147483647, ptr %i.ds, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge435
  %.1 = phi i8 [ %i.dr, %._crit_edge435 ], [ %.0103339, %bb.g ] ; 2 uses
  %i.dt = add nuw nsw i64 %.0102340, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dt, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !144

.loopexit.loopexit:                               ; preds = %bb.d
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 16 ; 3 uses
  %.sroa.5178.0.copyload = load i32, ptr %.sroa.5178.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6180.0.copyload = load i32, ptr %.sroa.6180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7182.0.copyload = load i32, ptr %.sroa.7182.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8184.0.copyload = load i32, ptr %.sroa.8184.0..sroa_idx, align 16 ; 3 uses
  %.sroa.9186.0.copyload = load i32, ptr %.sroa.9186.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10188.0.copyload = load i32, ptr %.sroa.10188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %8, i64 %indvars.iv ; 17 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %.sroa.0137.sroa.0.0.copyload = load i32, ptr %i.du, align 16 ; 3 uses
  %.sroa.0137.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16 ; 3 uses
  %.sroa.0137.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 28 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0136.sroa.0.0.copyload = load i32, ptr %i.dv, align 16 ; 2 uses
  %.sroa.0136.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0136.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 28 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.dw = icmp ult i32 %.sroa.0.0.copyload, %.sroa.0137.sroa.0.0.copyload ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload)
  %i.dx = select i1 %i.dw, i32 %.0105367, i32 %.sroa.0136.sroa.0.0.copyload
  %i.dy = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload) ; 2 uses
  %i.dz = select i1 %i.dw, i32 %.sroa.0136.sroa.0.0.copyload, i32 %.0105367
  %i.ea = icmp ult i32 %.sroa.5178.0.copyload, %.sroa.0137.sroa.2.0.copyload ; 2 uses
  %..1.i = tail call i32 @llvm.umin.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload)
  %.sroa.speculated306 = select i1 %i.ea, i32 %.sroa.6201.0360, i32 %.sroa.0136.sroa.2.0.copyload
  %i.eb = tail call i32 @llvm.umax.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload) ; 2 uses
  %.sroa.speculated303 = select i1 %i.ea, i32 %.sroa.0136.sroa.2.0.copyload, i32 %.sroa.6201.0360
  %i.ec = icmp ult i32 %.sroa.6180.0.copyload, %.sroa.0137.sroa.3.0.copyload ; 2 uses
  %..2.i = tail call i32 @llvm.umin.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload)
  %.sroa.speculated300 = select i1 %i.ec, i32 %.sroa.10203.0361, i32 %.sroa.0136.sroa.3.0.copyload
  %i.ed = tail call i32 @llvm.umax.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload) ; 2 uses
  %.sroa.speculated297 = select i1 %i.ec, i32 %.sroa.0136.sroa.3.0.copyload, i32 %.sroa.10203.0361
  %i.ee = icmp ult i32 %.sroa.7182.0.copyload, %.sroa.0137.sroa.4.0.copyload ; 2 uses
  %..3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload)
  %.sroa.speculated294 = select i1 %i.ee, i32 %.sroa.14205.0362, i32 %.sroa.0136.sroa.4.0.copyload
  %i.ef = tail call i32 @llvm.umax.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload) ; 2 uses
  %.sroa.speculated291 = select i1 %i.ee, i32 %.sroa.0136.sroa.4.0.copyload, i32 %.sroa.14205.0362
  %i.eg = icmp ult i32 %.sroa.8184.0.copyload, %.sroa.0137.sroa.5.0.copyload ; 2 uses
  %..4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload)
  %.sroa.speculated288 = select i1 %i.eg, i32 %.sroa.18.0363, i32 %.sroa.0136.sroa.5.0.copyload
  %i.eh = tail call i32 @llvm.umax.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload) ; 2 uses
  %.sroa.speculated285 = select i1 %i.eg, i32 %.sroa.0136.sroa.5.0.copyload, i32 %.sroa.18.0363
  %i.ei = icmp ult i32 %.sroa.9186.0.copyload, %.sroa.0137.sroa.6.0.copyload ; 2 uses
  %..5.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload)
  %.sroa.speculated282 = select i1 %i.ei, i32 %.sroa.22.0364, i32 %.sroa.0136.sroa.6.0.copyload
  %i.ej = tail call i32 @llvm.umax.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload) ; 2 uses
  %.sroa.speculated279 = select i1 %i.ei, i32 %.sroa.0136.sroa.6.0.copyload, i32 %.sroa.22.0364
  %i.ek = icmp ult i32 %.sroa.10188.0.copyload, %.sroa.0137.sroa.7.0.copyload ; 2 uses
  %..6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload)
  %.sroa.speculated276 = select i1 %i.ek, i32 %.sroa.26.0365, i32 %.sroa.0136.sroa.7.0.copyload
  %i.el = tail call i32 @llvm.umax.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload) ; 2 uses
  %.sroa.speculated273 = select i1 %i.ek, i32 %.sroa.0136.sroa.7.0.copyload, i32 %.sroa.26.0365
  %i.em = icmp ult i32 %.sroa.11.0.copyload, %.sroa.0137.sroa.8.0.copyload ; 2 uses
  %..7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload)
  %.sroa.speculated270 = select i1 %i.em, i32 %.sroa.30.0366, i32 %.sroa.0136.sroa.8.0.copyload
  %i.en = tail call i32 @llvm.umax.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload) ; 2 uses
  %.sroa.speculated = select i1 %i.em, i32 %.sroa.0136.sroa.8.0.copyload, i32 %.sroa.30.0366
  store i32 %..i, ptr %i.du, align 16
  store i32 %..1.i, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4
  store i32 %..2.i, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8
  store i32 %..3.i, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4
  store i32 %..4.i, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16
  store i32 %..5.i, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4
  store i32 %..6.i, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8
  store i32 %..7.i, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4
  store i32 %i.dx, ptr %i.dv, align 16
  store i32 %.sroa.speculated306, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.speculated300, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.speculated294, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.speculated288, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16
  store i32 %.sroa.speculated282, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4
  store i32 %.sroa.speculated276, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8
  store i32 %.sroa.speculated270, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  %.sroa.0137.sroa.0.0.copyload.1 = load i32, ptr %i.eo, align 16 ; 2 uses
  %.sroa.0137.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 36 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 44 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx.1, align 16 ; 2 uses
  %.sroa.0137.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 52 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 56 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 60 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx.1, align 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %.sroa.0136.sroa.0.0.copyload.1 = load i32, ptr %i.ep, align 16
  %.sroa.0136.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 48 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx.1, align 16
  %.sroa.0136.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 52 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 56 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 60 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx.1, align 4
  %i.eq = icmp ult i32 %i.dy, %.sroa.0137.sroa.0.0.copyload.1
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %.sroa.0137.sroa.0.0.copyload.1)
  %i.er = select i1 %i.eq, i32 %i.dz, i32 %.sroa.0136.sroa.0.0.copyload.1
  %i.es = icmp ult i32 %i.eb, %.sroa.0137.sroa.2.0.copyload.1
  %..1.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 %.sroa.0137.sroa.2.0.copyload.1)
  %.sroa.speculated306.1 = select i1 %i.es, i32 %.sroa.speculated303, i32 %.sroa.0136.sroa.2.0.copyload.1
  %i.et = icmp ult i32 %i.ed, %.sroa.0137.sroa.3.0.copyload.1
  %..2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 %.sroa.0137.sroa.3.0.copyload.1)
  %.sroa.speculated300.1 = select i1 %i.et, i32 %.sroa.speculated297, i32 %.sroa.0136.sroa.3.0.copyload.1
  %i.eu = icmp ult i32 %i.ef, %.sroa.0137.sroa.4.0.copyload.1
  %..3.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 %.sroa.0137.sroa.4.0.copyload.1)
  %.sroa.speculated294.1 = select i1 %i.eu, i32 %.sroa.speculated291, i32 %.sroa.0136.sroa.4.0.copyload.1
  %i.ev = icmp ult i32 %i.eh, %.sroa.0137.sroa.5.0.copyload.1
  %..4.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %.sroa.0137.sroa.5.0.copyload.1)
  %.sroa.speculated288.1 = select i1 %i.ev, i32 %.sroa.speculated285, i32 %.sroa.0136.sroa.5.0.copyload.1
  %i.ew = icmp ult i32 %i.ej, %.sroa.0137.sroa.6.0.copyload.1
  %..5.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 %.sroa.0137.sroa.6.0.copyload.1)
  %.sroa.speculated282.1 = select i1 %i.ew, i32 %.sroa.speculated279, i32 %.sroa.0136.sroa.6.0.copyload.1
  %i.ex = icmp ult i32 %i.el, %.sroa.0137.sroa.7.0.copyload.1
  %..6.i.1 = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %.sroa.0137.sroa.7.0.copyload.1)
  %.sroa.speculated276.1 = select i1 %i.ex, i32 %.sroa.speculated273, i32 %.sroa.0136.sroa.7.0.copyload.1
  %i.ey = icmp ult i32 %i.en, %.sroa.0137.sroa.8.0.copyload.1
  %..7.i.1 = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %.sroa.0137.sroa.8.0.copyload.1)
  %.sroa.speculated270.1 = select i1 %i.ey, i32 %.sroa.speculated, i32 %.sroa.0136.sroa.8.0.copyload.1
  store i32 %..i.1, ptr %i.eo, align 16
  store i32 %..1.i.1, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4
end_hunk_1
begin_hunk_2_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_21HammingComputer16_tplILNS_9SIMDLevelE0EEEE7bs_addnEjjRKS5_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = zext i32 %4 to i64                       ; 11 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.g = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.h = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not386 = icmp eq i32 %i.d, %1
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = and i64 %i.i, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.sh, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.k, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.l, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.m, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.n, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.o, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.p, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.q, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.s, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.t, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.u, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.v, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.w, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.x, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.ba = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bb = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bd = add <4 x i32> %i.ba, %i.bc
  store <4 x i32> %i.bd, ptr %9, align 16, !tbaa !91
  %i.be = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bf = add <4 x i32> %i.be, %i.bc
  store <4 x i32> %i.bf, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bg = load <4 x i32>, ptr %i.l, align 16, !tbaa !91
  %i.bh = add <4 x i32> %i.bg, %i.bc
  store <4 x i32> %i.bh, ptr %i.l, align 16, !tbaa !91
  %i.bi = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bj = add <4 x i32> %i.bi, %i.bc
  store <4 x i32> %i.bj, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bk = add i32 %.pre, 8
  %i.bl = load <4 x i32>, ptr %i.n, align 16, !tbaa !91
  %i.bm = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bo = add <4 x i32> %i.bl, %i.bn
  store <4 x i32> %i.bo, ptr %i.n, align 16, !tbaa !91
  %i.bp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bq = add <4 x i32> %i.bp, %i.bn
  store <4 x i32> %i.bq, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.br = load <4 x i32>, ptr %i.p, align 16, !tbaa !91
  %i.bs = add <4 x i32> %i.br, %i.bn
  store <4 x i32> %i.bs, ptr %i.p, align 16, !tbaa !91
  %i.bt = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bu = add <4 x i32> %i.bt, %i.bn
  store <4 x i32> %i.bu, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bv = add i32 %.pre, 16
  %i.bw = load <4 x i32>, ptr %i.r, align 16, !tbaa !91
  %i.bx = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bz = add <4 x i32> %i.bw, %i.by
  store <4 x i32> %i.bz, ptr %i.r, align 16, !tbaa !91
  %i.ca = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cb = add <4 x i32> %i.ca, %i.by
  store <4 x i32> %i.cb, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cc = load <4 x i32>, ptr %i.t, align 16, !tbaa !91
  %i.cd = add <4 x i32> %i.cc, %i.by
  store <4 x i32> %i.cd, ptr %i.t, align 16, !tbaa !91
  %i.ce = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cf = add <4 x i32> %i.ce, %i.by
  store <4 x i32> %i.cf, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cg = add i32 %.pre, 24
  %i.ch = load <4 x i32>, ptr %i.v, align 16, !tbaa !91
  %i.ci = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = add <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.v, align 16, !tbaa !91
  %i.cl = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cm = add <4 x i32> %i.cl, %i.cj
  store <4 x i32> %i.cm, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cn = load <4 x i32>, ptr %i.x, align 16, !tbaa !91
  %i.co = add <4 x i32> %i.cn, %i.cj
  store <4 x i32> %i.co, ptr %i.x, align 16, !tbaa !91
  %i.cp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cq = add <4 x i32> %i.cp, %i.cj
  store <4 x i32> %i.cq, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.h, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.cs, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.cz, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cy, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cx, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cw, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cv, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.cu, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.ct, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cr = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cs = add nuw i32 %.0105367, 32               ; 2 uses
  %i.ct = add nuw i32 %.sroa.6201.0360, 32
  %i.cu = add nuw i32 %.sroa.10203.0361, 32
  %i.cv = add nuw i32 %.sroa.14205.0362, 32
  %i.cw = add nuw i32 %.sroa.18.0363, 32
  %i.cx = add nuw i32 %.sroa.22.0364, 32
  %i.cy = add nuw i32 %.sroa.26.0365, 32
  %i.cz = add nuw i32 %.sroa.30.0366, 32
  %i.da = icmp ult i32 %i.cs, %i.d
  br i1 %i.da, label %.preheader331, label %.preheader335, !llvm.loop !173

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.db = shl i32 %indvars.iv.tr, 3
  %i.dc = add i32 %i.cr, %i.db
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.dd = icmp eq i8 %.1, 0
  br i1 %i.dd, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.h
  %.0102340 = phi i64 [ 0, %bb.c ], [ %i.du, %bb.h ] ; 4 uses
  %.0103339 = phi i8 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %i.de = trunc nuw nsw i64 %.0102340 to i32
  %i.df = add i32 %i.dc, %i.de
  %.pre439 = zext i32 %i.df to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = load ptr, ptr %7, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre439)
  br i1 %i.di, label %._crit_edge435, label %bb.g

._crit_edge435:                                   ; preds = %bb.e, %bb.f
  %i.dj = shl nuw nsw i64 %.pre439, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !31
  %i.dm = load <2 x i64>, ptr %2, align 8, !tbaa !31
  %i.dn = xor <2 x i64> %i.dm, %i.dl
  %i.do = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dn)
  %i.dp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.do)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !12
  %i.ds = add i8 %.0103339, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 2147483647, ptr %i.dt, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge435
  %.1 = phi i8 [ %i.ds, %._crit_edge435 ], [ %.0103339, %bb.g ] ; 2 uses
  %i.du = add nuw nsw i64 %.0102340, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !174

.loopexit.loopexit:                               ; preds = %bb.d
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 16 ; 3 uses
  %.sroa.5178.0.copyload = load i32, ptr %.sroa.5178.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6180.0.copyload = load i32, ptr %.sroa.6180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7182.0.copyload = load i32, ptr %.sroa.7182.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8184.0.copyload = load i32, ptr %.sroa.8184.0..sroa_idx, align 16 ; 3 uses
  %.sroa.9186.0.copyload = load i32, ptr %.sroa.9186.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10188.0.copyload = load i32, ptr %.sroa.10188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %8, i64 %indvars.iv ; 17 uses
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %.sroa.0137.sroa.0.0.copyload = load i32, ptr %i.dv, align 16 ; 3 uses
  %.sroa.0137.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16 ; 3 uses
  %.sroa.0137.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 28 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0136.sroa.0.0.copyload = load i32, ptr %i.dw, align 16 ; 2 uses
  %.sroa.0136.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0136.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.dx = icmp ult i32 %.sroa.0.0.copyload, %.sroa.0137.sroa.0.0.copyload ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload)
  %i.dy = select i1 %i.dx, i32 %.0105367, i32 %.sroa.0136.sroa.0.0.copyload
  %i.dz = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload) ; 2 uses
  %i.ea = select i1 %i.dx, i32 %.sroa.0136.sroa.0.0.copyload, i32 %.0105367
  %i.eb = icmp ult i32 %.sroa.5178.0.copyload, %.sroa.0137.sroa.2.0.copyload ; 2 uses
  %..1.i = tail call i32 @llvm.umin.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload)
  %.sroa.speculated306 = select i1 %i.eb, i32 %.sroa.6201.0360, i32 %.sroa.0136.sroa.2.0.copyload
  %i.ec = tail call i32 @llvm.umax.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload) ; 2 uses
  %.sroa.speculated303 = select i1 %i.eb, i32 %.sroa.0136.sroa.2.0.copyload, i32 %.sroa.6201.0360
  %i.ed = icmp ult i32 %.sroa.6180.0.copyload, %.sroa.0137.sroa.3.0.copyload ; 2 uses
  %..2.i = tail call i32 @llvm.umin.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload)
  %.sroa.speculated300 = select i1 %i.ed, i32 %.sroa.10203.0361, i32 %.sroa.0136.sroa.3.0.copyload
  %i.ee = tail call i32 @llvm.umax.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload) ; 2 uses
  %.sroa.speculated297 = select i1 %i.ed, i32 %.sroa.0136.sroa.3.0.copyload, i32 %.sroa.10203.0361
  %i.ef = icmp ult i32 %.sroa.7182.0.copyload, %.sroa.0137.sroa.4.0.copyload ; 2 uses
  %..3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload)
  %.sroa.speculated294 = select i1 %i.ef, i32 %.sroa.14205.0362, i32 %.sroa.0136.sroa.4.0.copyload
  %i.eg = tail call i32 @llvm.umax.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload) ; 2 uses
  %.sroa.speculated291 = select i1 %i.ef, i32 %.sroa.0136.sroa.4.0.copyload, i32 %.sroa.14205.0362
  %i.eh = icmp ult i32 %.sroa.8184.0.copyload, %.sroa.0137.sroa.5.0.copyload ; 2 uses
  %..4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload)
  %.sroa.speculated288 = select i1 %i.eh, i32 %.sroa.18.0363, i32 %.sroa.0136.sroa.5.0.copyload
  %i.ei = tail call i32 @llvm.umax.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload) ; 2 uses
  %.sroa.speculated285 = select i1 %i.eh, i32 %.sroa.0136.sroa.5.0.copyload, i32 %.sroa.18.0363
  %i.ej = icmp ult i32 %.sroa.9186.0.copyload, %.sroa.0137.sroa.6.0.copyload ; 2 uses
  %..5.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload)
  %.sroa.speculated282 = select i1 %i.ej, i32 %.sroa.22.0364, i32 %.sroa.0136.sroa.6.0.copyload
  %i.ek = tail call i32 @llvm.umax.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload) ; 2 uses
  %.sroa.speculated279 = select i1 %i.ej, i32 %.sroa.0136.sroa.6.0.copyload, i32 %.sroa.22.0364
  %i.el = icmp ult i32 %.sroa.10188.0.copyload, %.sroa.0137.sroa.7.0.copyload ; 2 uses
  %..6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload)
  %.sroa.speculated276 = select i1 %i.el, i32 %.sroa.26.0365, i32 %.sroa.0136.sroa.7.0.copyload
  %i.em = tail call i32 @llvm.umax.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload) ; 2 uses
  %.sroa.speculated273 = select i1 %i.el, i32 %.sroa.0136.sroa.7.0.copyload, i32 %.sroa.26.0365
  %i.en = icmp ult i32 %.sroa.11.0.copyload, %.sroa.0137.sroa.8.0.copyload ; 2 uses
  %..7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload)
  %.sroa.speculated270 = select i1 %i.en, i32 %.sroa.30.0366, i32 %.sroa.0136.sroa.8.0.copyload
  %i.eo = tail call i32 @llvm.umax.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload) ; 2 uses
  %.sroa.speculated = select i1 %i.en, i32 %.sroa.0136.sroa.8.0.copyload, i32 %.sroa.30.0366
  store i32 %..i, ptr %i.dv, align 16
  store i32 %..1.i, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4
  store i32 %..2.i, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8
  store i32 %..3.i, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4
  store i32 %..4.i, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16
  store i32 %..5.i, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4
  store i32 %..6.i, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8
  store i32 %..7.i, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4
  store i32 %i.dy, ptr %i.dw, align 16
  store i32 %.sroa.speculated306, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.speculated300, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.speculated294, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.speculated288, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16
  store i32 %.sroa.speculated282, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4
  store i32 %.sroa.speculated276, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8
  store i32 %.sroa.speculated270, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %.sroa.0137.sroa.0.0.copyload.1 = load i32, ptr %i.ep, align 16 ; 2 uses
  %.sroa.0137.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 48 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx.1, align 16 ; 2 uses
  %.sroa.0137.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 52 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 56 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 60 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx.1, align 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 2 uses
  %.sroa.0136.sroa.0.0.copyload.1 = load i32, ptr %i.eq, align 16
  %.sroa.0136.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 36 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 44 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx.1, align 16
  %.sroa.0136.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 52 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 60 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx.1, align 4
  %i.er = icmp ult i32 %i.dz, %.sroa.0137.sroa.0.0.copyload.1
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %.sroa.0137.sroa.0.0.copyload.1)
  %i.es = select i1 %i.er, i32 %i.ea, i32 %.sroa.0136.sroa.0.0.copyload.1
  %i.et = icmp ult i32 %i.ec, %.sroa.0137.sroa.2.0.copyload.1
  %..1.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %.sroa.0137.sroa.2.0.copyload.1)
  %.sroa.speculated306.1 = select i1 %i.et, i32 %.sroa.speculated303, i32 %.sroa.0136.sroa.2.0.copyload.1
  %i.eu = icmp ult i32 %i.ee, %.sroa.0137.sroa.3.0.copyload.1
  %..2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %.sroa.0137.sroa.3.0.copyload.1)
  %.sroa.speculated300.1 = select i1 %i.eu, i32 %.sroa.speculated297, i32 %.sroa.0136.sroa.3.0.copyload.1
  %i.ev = icmp ult i32 %i.eg, %.sroa.0137.sroa.4.0.copyload.1
  %..3.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %.sroa.0137.sroa.4.0.copyload.1)
  %.sroa.speculated294.1 = select i1 %i.ev, i32 %.sroa.speculated291, i32 %.sroa.0136.sroa.4.0.copyload.1
  %i.ew = icmp ult i32 %i.ei, %.sroa.0137.sroa.5.0.copyload.1
  %..4.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 %.sroa.0137.sroa.5.0.copyload.1)
  %.sroa.speculated288.1 = select i1 %i.ew, i32 %.sroa.speculated285, i32 %.sroa.0136.sroa.5.0.copyload.1
  %i.ex = icmp ult i32 %i.ek, %.sroa.0137.sroa.6.0.copyload.1
  %..5.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %.sroa.0137.sroa.6.0.copyload.1)
  %.sroa.speculated282.1 = select i1 %i.ex, i32 %.sroa.speculated279, i32 %.sroa.0136.sroa.6.0.copyload.1
  %i.ey = icmp ult i32 %i.em, %.sroa.0137.sroa.7.0.copyload.1
  %..6.i.1 = tail call i32 @llvm.umin.i32(i32 %i.em, i32 %.sroa.0137.sroa.7.0.copyload.1)
  %.sroa.speculated276.1 = select i1 %i.ey, i32 %.sroa.speculated273, i32 %.sroa.0136.sroa.7.0.copyload.1
  %i.ez = icmp ult i32 %i.eo, %.sroa.0137.sroa.8.0.copyload.1
  %..7.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %.sroa.0137.sroa.8.0.copyload.1)
  %.sroa.speculated270.1 = select i1 %i.ez, i32 %.sroa.speculated, i32 %.sroa.0136.sroa.8.0.copyload.1
  store i32 %..i.1, ptr %i.ep, align 16
end_hunk_2
begin_hunk_3_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_21HammingComputer20_tplILNS_9SIMDLevelE0EEEE7bs_addnEjjRKS5_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = zext i32 %4 to i64                       ; 11 uses
  %i.g = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.h = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.i = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %.not386 = icmp eq i32 %i.d, %1
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = and i64 %i.j, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.so, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.l, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.m, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.n, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.o, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.p, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.q, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.r, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.s, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.t, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.u, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.v, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.w, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.x, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.y, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.bb = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bc = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bd = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.be = add <4 x i32> %i.bb, %i.bd
  store <4 x i32> %i.be, ptr %9, align 16, !tbaa !91
  %i.bf = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bg = add <4 x i32> %i.bf, %i.bd
  store <4 x i32> %i.bg, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bh = load <4 x i32>, ptr %i.m, align 16, !tbaa !91
  %i.bi = add <4 x i32> %i.bh, %i.bd
  store <4 x i32> %i.bi, ptr %i.m, align 16, !tbaa !91
  %i.bj = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bk = add <4 x i32> %i.bj, %i.bd
  store <4 x i32> %i.bk, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bl = add i32 %.pre, 8
  %i.bm = load <4 x i32>, ptr %i.o, align 16, !tbaa !91
  %i.bn = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bp = add <4 x i32> %i.bm, %i.bo
  store <4 x i32> %i.bp, ptr %i.o, align 16, !tbaa !91
  %i.bq = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.br = add <4 x i32> %i.bq, %i.bo
  store <4 x i32> %i.br, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bs = load <4 x i32>, ptr %i.q, align 16, !tbaa !91
  %i.bt = add <4 x i32> %i.bs, %i.bo
  store <4 x i32> %i.bt, ptr %i.q, align 16, !tbaa !91
  %i.bu = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bv = add <4 x i32> %i.bu, %i.bo
  store <4 x i32> %i.bv, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bw = add i32 %.pre, 16
  %i.bx = load <4 x i32>, ptr %i.s, align 16, !tbaa !91
  %i.by = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.bz = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ca = add <4 x i32> %i.bx, %i.bz
  store <4 x i32> %i.ca, ptr %i.s, align 16, !tbaa !91
  %i.cb = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cc = add <4 x i32> %i.cb, %i.bz
  store <4 x i32> %i.cc, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cd = load <4 x i32>, ptr %i.u, align 16, !tbaa !91
  %i.ce = add <4 x i32> %i.cd, %i.bz
  store <4 x i32> %i.ce, ptr %i.u, align 16, !tbaa !91
  %i.cf = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cg = add <4 x i32> %i.cf, %i.bz
  store <4 x i32> %i.cg, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.ch = add i32 %.pre, 24
  %i.ci = load <4 x i32>, ptr %i.w, align 16, !tbaa !91
  %i.cj = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = add <4 x i32> %i.ci, %i.ck
  store <4 x i32> %i.cl, ptr %i.w, align 16, !tbaa !91
  %i.cm = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cn = add <4 x i32> %i.cm, %i.ck
  store <4 x i32> %i.cn, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.co = load <4 x i32>, ptr %i.y, align 16, !tbaa !91
  %i.cp = add <4 x i32> %i.co, %i.ck
  store <4 x i32> %i.cp, ptr %i.y, align 16, !tbaa !91
  %i.cq = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cr = add <4 x i32> %i.cq, %i.ck
  store <4 x i32> %i.cr, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.i, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.ct, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.da, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cz, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cy, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cx, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cw, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.cv, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.cu, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cs = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ct = add nuw i32 %.0105367, 32               ; 2 uses
  %i.cu = add nuw i32 %.sroa.6201.0360, 32
  %i.cv = add nuw i32 %.sroa.10203.0361, 32
  %i.cw = add nuw i32 %.sroa.14205.0362, 32
  %i.cx = add nuw i32 %.sroa.18.0363, 32
  %i.cy = add nuw i32 %.sroa.22.0364, 32
  %i.cz = add nuw i32 %.sroa.26.0365, 32
  %i.da = add nuw i32 %.sroa.30.0366, 32
  %i.db = icmp ult i32 %i.ct, %i.d
  br i1 %i.db, label %.preheader331, label %.preheader335, !llvm.loop !204

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.dc = shl i32 %indvars.iv.tr, 3
  %i.dd = add i32 %i.cs, %i.dc
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.de = icmp eq i8 %.1, 0
  br i1 %i.de, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.h
  %.0102340 = phi i64 [ 0, %bb.c ], [ %i.eb, %bb.h ] ; 4 uses
  %.0103339 = phi i8 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %i.df = trunc nuw nsw i64 %.0102340 to i32
  %i.dg = add i32 %i.dd, %i.df
  %.pre439 = zext i32 %i.dg to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dh = load ptr, ptr %7, align 8, !tbaa !93
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre439)
  br i1 %i.dj, label %._crit_edge435, label %bb.g

._crit_edge435:                                   ; preds = %bb.e, %bb.f
  %i.dk = mul nuw nsw i64 %.pre439, 20
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load <2 x i64>, ptr %i.dl, align 8, !tbaa !31
  %i.do = load <2 x i64>, ptr %2, align 8, !tbaa !31
  %i.dp = xor <2 x i64> %i.do, %i.dn
  %i.dq = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dp)
  %i.dr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.dq)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = load i32, ptr %i.dm, align 8, !tbaa !12
  %i.du = load i32, ptr %i.e, align 8, !tbaa !184
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dv)
  %i.dx = add nuw nsw i32 %i.dw, %i.ds
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !12
  %i.dz = add i8 %.0103339, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 2147483647, ptr %i.ea, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge435
  %.1 = phi i8 [ %i.dz, %._crit_edge435 ], [ %.0103339, %bb.g ] ; 2 uses
  %i.eb = add nuw nsw i64 %.0102340, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !205

.loopexit.loopexit:                               ; preds = %bb.d
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 16 ; 3 uses
  %.sroa.5178.0.copyload = load i32, ptr %.sroa.5178.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6180.0.copyload = load i32, ptr %.sroa.6180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7182.0.copyload = load i32, ptr %.sroa.7182.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8184.0.copyload = load i32, ptr %.sroa.8184.0..sroa_idx, align 16 ; 3 uses
  %.sroa.9186.0.copyload = load i32, ptr %.sroa.9186.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10188.0.copyload = load i32, ptr %.sroa.10188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.ec = getelementptr inbounds nuw [64 x i8], ptr %8, i64 %indvars.iv ; 17 uses
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %.sroa.0137.sroa.0.0.copyload = load i32, ptr %i.ec, align 16 ; 3 uses
  %.sroa.0137.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16 ; 3 uses
  %.sroa.0137.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 20 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 28 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0136.sroa.0.0.copyload = load i32, ptr %i.ed, align 16 ; 2 uses
  %.sroa.0136.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 12 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0136.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 20 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 28 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.ee = icmp ult i32 %.sroa.0.0.copyload, %.sroa.0137.sroa.0.0.copyload ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload)
  %i.ef = select i1 %i.ee, i32 %.0105367, i32 %.sroa.0136.sroa.0.0.copyload
  %i.eg = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload) ; 2 uses
  %i.eh = select i1 %i.ee, i32 %.sroa.0136.sroa.0.0.copyload, i32 %.0105367
  %i.ei = icmp ult i32 %.sroa.5178.0.copyload, %.sroa.0137.sroa.2.0.copyload ; 2 uses
  %..1.i = tail call i32 @llvm.umin.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload)
  %.sroa.speculated306 = select i1 %i.ei, i32 %.sroa.6201.0360, i32 %.sroa.0136.sroa.2.0.copyload
  %i.ej = tail call i32 @llvm.umax.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload) ; 2 uses
  %.sroa.speculated303 = select i1 %i.ei, i32 %.sroa.0136.sroa.2.0.copyload, i32 %.sroa.6201.0360
  %i.ek = icmp ult i32 %.sroa.6180.0.copyload, %.sroa.0137.sroa.3.0.copyload ; 2 uses
  %..2.i = tail call i32 @llvm.umin.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload)
  %.sroa.speculated300 = select i1 %i.ek, i32 %.sroa.10203.0361, i32 %.sroa.0136.sroa.3.0.copyload
  %i.el = tail call i32 @llvm.umax.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload) ; 2 uses
  %.sroa.speculated297 = select i1 %i.ek, i32 %.sroa.0136.sroa.3.0.copyload, i32 %.sroa.10203.0361
  %i.em = icmp ult i32 %.sroa.7182.0.copyload, %.sroa.0137.sroa.4.0.copyload ; 2 uses
  %..3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload)
  %.sroa.speculated294 = select i1 %i.em, i32 %.sroa.14205.0362, i32 %.sroa.0136.sroa.4.0.copyload
  %i.en = tail call i32 @llvm.umax.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload) ; 2 uses
  %.sroa.speculated291 = select i1 %i.em, i32 %.sroa.0136.sroa.4.0.copyload, i32 %.sroa.14205.0362
  %i.eo = icmp ult i32 %.sroa.8184.0.copyload, %.sroa.0137.sroa.5.0.copyload ; 2 uses
  %..4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload)
  %.sroa.speculated288 = select i1 %i.eo, i32 %.sroa.18.0363, i32 %.sroa.0136.sroa.5.0.copyload
  %i.ep = tail call i32 @llvm.umax.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload) ; 2 uses
  %.sroa.speculated285 = select i1 %i.eo, i32 %.sroa.0136.sroa.5.0.copyload, i32 %.sroa.18.0363
  %i.eq = icmp ult i32 %.sroa.9186.0.copyload, %.sroa.0137.sroa.6.0.copyload ; 2 uses
  %..5.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload)
  %.sroa.speculated282 = select i1 %i.eq, i32 %.sroa.22.0364, i32 %.sroa.0136.sroa.6.0.copyload
  %i.er = tail call i32 @llvm.umax.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload) ; 2 uses
  %.sroa.speculated279 = select i1 %i.eq, i32 %.sroa.0136.sroa.6.0.copyload, i32 %.sroa.22.0364
  %i.es = icmp ult i32 %.sroa.10188.0.copyload, %.sroa.0137.sroa.7.0.copyload ; 2 uses
  %..6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload)
  %.sroa.speculated276 = select i1 %i.es, i32 %.sroa.26.0365, i32 %.sroa.0136.sroa.7.0.copyload
  %i.et = tail call i32 @llvm.umax.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload) ; 2 uses
  %.sroa.speculated273 = select i1 %i.es, i32 %.sroa.0136.sroa.7.0.copyload, i32 %.sroa.26.0365
  %i.eu = icmp ult i32 %.sroa.11.0.copyload, %.sroa.0137.sroa.8.0.copyload ; 2 uses
  %..7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload)
  %.sroa.speculated270 = select i1 %i.eu, i32 %.sroa.30.0366, i32 %.sroa.0136.sroa.8.0.copyload
  %i.ev = tail call i32 @llvm.umax.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload) ; 2 uses
  %.sroa.speculated = select i1 %i.eu, i32 %.sroa.0136.sroa.8.0.copyload, i32 %.sroa.30.0366
  store i32 %..i, ptr %i.ec, align 16
  store i32 %..1.i, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4
  store i32 %..2.i, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8
  store i32 %..3.i, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4
  store i32 %..4.i, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16
  store i32 %..5.i, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4
  store i32 %..6.i, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8
  store i32 %..7.i, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4
  store i32 %i.ef, ptr %i.ed, align 16
  store i32 %.sroa.speculated306, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.speculated300, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.speculated294, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.speculated288, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16
  store i32 %.sroa.speculated282, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4
  store i32 %.sroa.speculated276, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8
  store i32 %.sroa.speculated270, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %.sroa.0137.sroa.0.0.copyload.1 = load i32, ptr %i.ew, align 16 ; 2 uses
  %.sroa.0137.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 36 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 44 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx.1, align 16 ; 2 uses
  %.sroa.0137.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 52 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ec, i64 60 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx.1, align 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 2 uses
  %.sroa.0136.sroa.0.0.copyload.1 = load i32, ptr %i.ex, align 16
  %.sroa.0136.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 36 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 44 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx.1, align 16
  %.sroa.0136.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 52 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 56 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 60 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx.1, align 4
  %i.ey = icmp ult i32 %i.eg, %.sroa.0137.sroa.0.0.copyload.1
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %.sroa.0137.sroa.0.0.copyload.1)
  %i.ez = select i1 %i.ey, i32 %i.eh, i32 %.sroa.0136.sroa.0.0.copyload.1
  %i.fa = icmp ult i32 %i.ej, %.sroa.0137.sroa.2.0.copyload.1
  %..1.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 %.sroa.0137.sroa.2.0.copyload.1)
  %.sroa.speculated306.1 = select i1 %i.fa, i32 %.sroa.speculated303, i32 %.sroa.0136.sroa.2.0.copyload.1
  %i.fb = icmp ult i32 %i.el, %.sroa.0137.sroa.3.0.copyload.1
  %..2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %.sroa.0137.sroa.3.0.copyload.1)
  %.sroa.speculated300.1 = select i1 %i.fb, i32 %.sroa.speculated297, i32 %.sroa.0136.sroa.3.0.copyload.1
  %i.fc = icmp ult i32 %i.en, %.sroa.0137.sroa.4.0.copyload.1
  %..3.i.1 = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %.sroa.0137.sroa.4.0.copyload.1)
  %.sroa.speculated294.1 = select i1 %i.fc, i32 %.sroa.speculated291, i32 %.sroa.0136.sroa.4.0.copyload.1
  %i.fd = icmp ult i32 %i.ep, %.sroa.0137.sroa.5.0.copyload.1
  %..4.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 %.sroa.0137.sroa.5.0.copyload.1)
  %.sroa.speculated288.1 = select i1 %i.fd, i32 %.sroa.speculated285, i32 %.sroa.0136.sroa.5.0.copyload.1
  %i.fe = icmp ult i32 %i.er, %.sroa.0137.sroa.6.0.copyload.1
  %..5.i.1 = tail call i32 @llvm.umin.i32(i32 %i.er, i32 %.sroa.0137.sroa.6.0.copyload.1)
  %.sroa.speculated282.1 = select i1 %i.fe, i32 %.sroa.speculated279, i32 %.sroa.0136.sroa.6.0.copyload.1
  %i.ff = icmp ult i32 %i.et, %.sroa.0137.sroa.7.0.copyload.1
end_hunk_3
begin_hunk_4_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_21HammingComputer32_tplILNS_9SIMDLevelE0EEEE7bs_addnEjjRKS5_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = zext i32 %4 to i64                       ; 11 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.g = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.h = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not386 = icmp eq i32 %i.d, %1
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = and i64 %i.i, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.sh, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.k, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.l, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.m, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.n, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.o, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.p, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.q, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.s, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.t, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.u, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.v, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.w, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.x, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.ba = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bb = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bd = add <4 x i32> %i.ba, %i.bc
  store <4 x i32> %i.bd, ptr %9, align 16, !tbaa !91
  %i.be = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bf = add <4 x i32> %i.be, %i.bc
  store <4 x i32> %i.bf, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bg = load <4 x i32>, ptr %i.l, align 16, !tbaa !91
  %i.bh = add <4 x i32> %i.bg, %i.bc
  store <4 x i32> %i.bh, ptr %i.l, align 16, !tbaa !91
  %i.bi = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bj = add <4 x i32> %i.bi, %i.bc
  store <4 x i32> %i.bj, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bk = add i32 %.pre, 8
  %i.bl = load <4 x i32>, ptr %i.n, align 16, !tbaa !91
  %i.bm = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bo = add <4 x i32> %i.bl, %i.bn
  store <4 x i32> %i.bo, ptr %i.n, align 16, !tbaa !91
  %i.bp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bq = add <4 x i32> %i.bp, %i.bn
  store <4 x i32> %i.bq, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.br = load <4 x i32>, ptr %i.p, align 16, !tbaa !91
  %i.bs = add <4 x i32> %i.br, %i.bn
  store <4 x i32> %i.bs, ptr %i.p, align 16, !tbaa !91
  %i.bt = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bu = add <4 x i32> %i.bt, %i.bn
  store <4 x i32> %i.bu, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bv = add i32 %.pre, 16
  %i.bw = load <4 x i32>, ptr %i.r, align 16, !tbaa !91
  %i.bx = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bz = add <4 x i32> %i.bw, %i.by
  store <4 x i32> %i.bz, ptr %i.r, align 16, !tbaa !91
  %i.ca = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cb = add <4 x i32> %i.ca, %i.by
  store <4 x i32> %i.cb, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cc = load <4 x i32>, ptr %i.t, align 16, !tbaa !91
  %i.cd = add <4 x i32> %i.cc, %i.by
  store <4 x i32> %i.cd, ptr %i.t, align 16, !tbaa !91
  %i.ce = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cf = add <4 x i32> %i.ce, %i.by
  store <4 x i32> %i.cf, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cg = add i32 %.pre, 24
  %i.ch = load <4 x i32>, ptr %i.v, align 16, !tbaa !91
  %i.ci = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = add <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.v, align 16, !tbaa !91
  %i.cl = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cm = add <4 x i32> %i.cl, %i.cj
  store <4 x i32> %i.cm, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cn = load <4 x i32>, ptr %i.x, align 16, !tbaa !91
  %i.co = add <4 x i32> %i.cn, %i.cj
  store <4 x i32> %i.co, ptr %i.x, align 16, !tbaa !91
  %i.cp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cq = add <4 x i32> %i.cp, %i.cj
  store <4 x i32> %i.cq, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.h, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.cs, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.cz, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cy, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cx, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cw, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cv, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.cu, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.ct, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cr = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cs = add nuw i32 %.0105367, 32               ; 2 uses
  %i.ct = add nuw i32 %.sroa.6201.0360, 32
  %i.cu = add nuw i32 %.sroa.10203.0361, 32
  %i.cv = add nuw i32 %.sroa.14205.0362, 32
  %i.cw = add nuw i32 %.sroa.18.0363, 32
  %i.cx = add nuw i32 %.sroa.22.0364, 32
  %i.cy = add nuw i32 %.sroa.26.0365, 32
  %i.cz = add nuw i32 %.sroa.30.0366, 32
  %i.da = icmp ult i32 %i.cs, %i.d
  br i1 %i.da, label %.preheader331, label %.preheader335, !llvm.loop !236

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.db = shl i32 %indvars.iv.tr, 3
  %i.dc = add i32 %i.cr, %i.db
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.dd = icmp eq i8 %.1, 0
  br i1 %i.dd, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.h
  %.0102340 = phi i64 [ 0, %bb.c ], [ %i.du, %bb.h ] ; 4 uses
  %.0103339 = phi i8 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %i.de = trunc nuw nsw i64 %.0102340 to i32
  %i.df = add i32 %i.dc, %i.de
  %.pre439 = zext i32 %i.df to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = load ptr, ptr %7, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre439)
  br i1 %i.di, label %._crit_edge435, label %bb.g

._crit_edge435:                                   ; preds = %bb.e, %bb.f
  %i.dj = shl nuw nsw i64 %.pre439, 5
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  %i.dl = load <4 x i64>, ptr %i.dk, align 8, !tbaa !31
  %i.dm = load <4 x i64>, ptr %2, align 8, !tbaa !31
  %i.dn = xor <4 x i64> %i.dm, %i.dl
  %i.do = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.dn)
  %i.dp = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.do)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !12
  %i.ds = add i8 %.0103339, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 2147483647, ptr %i.dt, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge435
  %.1 = phi i8 [ %i.ds, %._crit_edge435 ], [ %.0103339, %bb.g ] ; 2 uses
  %i.du = add nuw nsw i64 %.0102340, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !237

.loopexit.loopexit:                               ; preds = %bb.d
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 16 ; 3 uses
  %.sroa.5178.0.copyload = load i32, ptr %.sroa.5178.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6180.0.copyload = load i32, ptr %.sroa.6180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7182.0.copyload = load i32, ptr %.sroa.7182.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8184.0.copyload = load i32, ptr %.sroa.8184.0..sroa_idx, align 16 ; 3 uses
  %.sroa.9186.0.copyload = load i32, ptr %.sroa.9186.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10188.0.copyload = load i32, ptr %.sroa.10188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %8, i64 %indvars.iv ; 17 uses
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %.sroa.0137.sroa.0.0.copyload = load i32, ptr %i.dv, align 16 ; 3 uses
  %.sroa.0137.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16 ; 3 uses
  %.sroa.0137.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 28 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0136.sroa.0.0.copyload = load i32, ptr %i.dw, align 16 ; 2 uses
  %.sroa.0136.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0136.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.dx = icmp ult i32 %.sroa.0.0.copyload, %.sroa.0137.sroa.0.0.copyload ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload)
  %i.dy = select i1 %i.dx, i32 %.0105367, i32 %.sroa.0136.sroa.0.0.copyload
  %i.dz = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload) ; 2 uses
  %i.ea = select i1 %i.dx, i32 %.sroa.0136.sroa.0.0.copyload, i32 %.0105367
  %i.eb = icmp ult i32 %.sroa.5178.0.copyload, %.sroa.0137.sroa.2.0.copyload ; 2 uses
  %..1.i = tail call i32 @llvm.umin.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload)
  %.sroa.speculated306 = select i1 %i.eb, i32 %.sroa.6201.0360, i32 %.sroa.0136.sroa.2.0.copyload
  %i.ec = tail call i32 @llvm.umax.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload) ; 2 uses
  %.sroa.speculated303 = select i1 %i.eb, i32 %.sroa.0136.sroa.2.0.copyload, i32 %.sroa.6201.0360
  %i.ed = icmp ult i32 %.sroa.6180.0.copyload, %.sroa.0137.sroa.3.0.copyload ; 2 uses
  %..2.i = tail call i32 @llvm.umin.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload)
  %.sroa.speculated300 = select i1 %i.ed, i32 %.sroa.10203.0361, i32 %.sroa.0136.sroa.3.0.copyload
  %i.ee = tail call i32 @llvm.umax.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload) ; 2 uses
  %.sroa.speculated297 = select i1 %i.ed, i32 %.sroa.0136.sroa.3.0.copyload, i32 %.sroa.10203.0361
  %i.ef = icmp ult i32 %.sroa.7182.0.copyload, %.sroa.0137.sroa.4.0.copyload ; 2 uses
  %..3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload)
  %.sroa.speculated294 = select i1 %i.ef, i32 %.sroa.14205.0362, i32 %.sroa.0136.sroa.4.0.copyload
  %i.eg = tail call i32 @llvm.umax.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload) ; 2 uses
  %.sroa.speculated291 = select i1 %i.ef, i32 %.sroa.0136.sroa.4.0.copyload, i32 %.sroa.14205.0362
  %i.eh = icmp ult i32 %.sroa.8184.0.copyload, %.sroa.0137.sroa.5.0.copyload ; 2 uses
  %..4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload)
  %.sroa.speculated288 = select i1 %i.eh, i32 %.sroa.18.0363, i32 %.sroa.0136.sroa.5.0.copyload
  %i.ei = tail call i32 @llvm.umax.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload) ; 2 uses
  %.sroa.speculated285 = select i1 %i.eh, i32 %.sroa.0136.sroa.5.0.copyload, i32 %.sroa.18.0363
  %i.ej = icmp ult i32 %.sroa.9186.0.copyload, %.sroa.0137.sroa.6.0.copyload ; 2 uses
  %..5.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload)
  %.sroa.speculated282 = select i1 %i.ej, i32 %.sroa.22.0364, i32 %.sroa.0136.sroa.6.0.copyload
  %i.ek = tail call i32 @llvm.umax.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload) ; 2 uses
  %.sroa.speculated279 = select i1 %i.ej, i32 %.sroa.0136.sroa.6.0.copyload, i32 %.sroa.22.0364
  %i.el = icmp ult i32 %.sroa.10188.0.copyload, %.sroa.0137.sroa.7.0.copyload ; 2 uses
  %..6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload)
  %.sroa.speculated276 = select i1 %i.el, i32 %.sroa.26.0365, i32 %.sroa.0136.sroa.7.0.copyload
  %i.em = tail call i32 @llvm.umax.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload) ; 2 uses
  %.sroa.speculated273 = select i1 %i.el, i32 %.sroa.0136.sroa.7.0.copyload, i32 %.sroa.26.0365
  %i.en = icmp ult i32 %.sroa.11.0.copyload, %.sroa.0137.sroa.8.0.copyload ; 2 uses
  %..7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload)
  %.sroa.speculated270 = select i1 %i.en, i32 %.sroa.30.0366, i32 %.sroa.0136.sroa.8.0.copyload
  %i.eo = tail call i32 @llvm.umax.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload) ; 2 uses
  %.sroa.speculated = select i1 %i.en, i32 %.sroa.0136.sroa.8.0.copyload, i32 %.sroa.30.0366
  store i32 %..i, ptr %i.dv, align 16
  store i32 %..1.i, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4
  store i32 %..2.i, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8
  store i32 %..3.i, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4
  store i32 %..4.i, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16
  store i32 %..5.i, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4
  store i32 %..6.i, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8
  store i32 %..7.i, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4
  store i32 %i.dy, ptr %i.dw, align 16
  store i32 %.sroa.speculated306, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.speculated300, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.speculated294, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.speculated288, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16
  store i32 %.sroa.speculated282, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4
  store i32 %.sroa.speculated276, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8
  store i32 %.sroa.speculated270, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %.sroa.0137.sroa.0.0.copyload.1 = load i32, ptr %i.ep, align 16 ; 2 uses
  %.sroa.0137.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 48 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx.1, align 16 ; 2 uses
  %.sroa.0137.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 52 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 56 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 60 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx.1, align 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 2 uses
  %.sroa.0136.sroa.0.0.copyload.1 = load i32, ptr %i.eq, align 16
  %.sroa.0136.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 36 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 44 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx.1, align 16
  %.sroa.0136.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 52 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 60 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx.1, align 4
  %i.er = icmp ult i32 %i.dz, %.sroa.0137.sroa.0.0.copyload.1
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %.sroa.0137.sroa.0.0.copyload.1)
  %i.es = select i1 %i.er, i32 %i.ea, i32 %.sroa.0136.sroa.0.0.copyload.1
  %i.et = icmp ult i32 %i.ec, %.sroa.0137.sroa.2.0.copyload.1
  %..1.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %.sroa.0137.sroa.2.0.copyload.1)
  %.sroa.speculated306.1 = select i1 %i.et, i32 %.sroa.speculated303, i32 %.sroa.0136.sroa.2.0.copyload.1
  %i.eu = icmp ult i32 %i.ee, %.sroa.0137.sroa.3.0.copyload.1
  %..2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %.sroa.0137.sroa.3.0.copyload.1)
  %.sroa.speculated300.1 = select i1 %i.eu, i32 %.sroa.speculated297, i32 %.sroa.0136.sroa.3.0.copyload.1
  %i.ev = icmp ult i32 %i.eg, %.sroa.0137.sroa.4.0.copyload.1
  %..3.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %.sroa.0137.sroa.4.0.copyload.1)
  %.sroa.speculated294.1 = select i1 %i.ev, i32 %.sroa.speculated291, i32 %.sroa.0136.sroa.4.0.copyload.1
  %i.ew = icmp ult i32 %i.ei, %.sroa.0137.sroa.5.0.copyload.1
  %..4.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 %.sroa.0137.sroa.5.0.copyload.1)
  %.sroa.speculated288.1 = select i1 %i.ew, i32 %.sroa.speculated285, i32 %.sroa.0136.sroa.5.0.copyload.1
  %i.ex = icmp ult i32 %i.ek, %.sroa.0137.sroa.6.0.copyload.1
  %..5.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %.sroa.0137.sroa.6.0.copyload.1)
  %.sroa.speculated282.1 = select i1 %i.ex, i32 %.sroa.speculated279, i32 %.sroa.0136.sroa.6.0.copyload.1
  %i.ey = icmp ult i32 %i.em, %.sroa.0137.sroa.7.0.copyload.1
  %..6.i.1 = tail call i32 @llvm.umin.i32(i32 %i.em, i32 %.sroa.0137.sroa.7.0.copyload.1)
  %.sroa.speculated276.1 = select i1 %i.ey, i32 %.sroa.speculated273, i32 %.sroa.0136.sroa.7.0.copyload.1
  %i.ez = icmp ult i32 %i.eo, %.sroa.0137.sroa.8.0.copyload.1
  %..7.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %.sroa.0137.sroa.8.0.copyload.1)
  %.sroa.speculated270.1 = select i1 %i.ez, i32 %.sroa.speculated, i32 %.sroa.0136.sroa.8.0.copyload.1
  store i32 %..i.1, ptr %i.ep, align 16
end_hunk_4
begin_hunk_5_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_21HammingComputer64_tplILNS_9SIMDLevelE0EEEE7bs_addnEjjRKS5_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = zext i32 %4 to i64                       ; 11 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.g = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.h = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 5 uses
  %.not386 = icmp eq i32 %i.d, %1
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = and i64 %i.i, 4294967264
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7223.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7215.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7223.0..sroa_idx.1393 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7215.0..sroa_idx.1400 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7223.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7223.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7215.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7223.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7223.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7215.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7223.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7215.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader332.preheader

._crit_edge383:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader332.preheader:                          ; preds = %.lr.ph382, %._crit_edge
  %.0108380 = phi i32 [ 0, %.lr.ph382 ], [ %i.sh, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.k, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.l, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.m, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1393, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.n, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1400, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.o, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.p, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.q, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.s, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.t, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.u, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.v, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.w, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7223.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.x, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0108380, %1                   ; 6 uses
  br i1 %.not385, label %.preheader335, label %.preheader331

.preheader335:                                    ; preds = %bb.b, %.preheader332.preheader
  %i.ba = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bb = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bd = add <4 x i32> %i.ba, %i.bc
  store <4 x i32> %i.bd, ptr %9, align 16, !tbaa !91
  %i.be = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bf = add <4 x i32> %i.be, %i.bc
  store <4 x i32> %i.bf, ptr %.sroa.7215.0..sroa_idx, align 16, !tbaa !91
  %i.bg = load <4 x i32>, ptr %i.l, align 16, !tbaa !91
  %i.bh = add <4 x i32> %i.bg, %i.bc
  store <4 x i32> %i.bh, ptr %i.l, align 16, !tbaa !91
  %i.bi = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bj = add <4 x i32> %i.bi, %i.bc
  store <4 x i32> %i.bj, ptr %.sroa.7215.0..sroa_idx.1, align 16, !tbaa !91
  %i.bk = add i32 %.pre, 8
  %i.bl = load <4 x i32>, ptr %i.n, align 16, !tbaa !91
  %i.bm = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bo = add <4 x i32> %i.bl, %i.bn
  store <4 x i32> %i.bo, ptr %i.n, align 16, !tbaa !91
  %i.bp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.bq = add <4 x i32> %i.bp, %i.bn
  store <4 x i32> %i.bq, ptr %.sroa.7215.0..sroa_idx.1400, align 16, !tbaa !91
  %i.br = load <4 x i32>, ptr %i.p, align 16, !tbaa !91
  %i.bs = add <4 x i32> %i.br, %i.bn
  store <4 x i32> %i.bs, ptr %i.p, align 16, !tbaa !91
  %i.bt = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bu = add <4 x i32> %i.bt, %i.bn
  store <4 x i32> %i.bu, ptr %.sroa.7215.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.bv = add i32 %.pre, 16
  %i.bw = load <4 x i32>, ptr %i.r, align 16, !tbaa !91
  %i.bx = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.by = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bz = add <4 x i32> %i.bw, %i.by
  store <4 x i32> %i.bz, ptr %i.r, align 16, !tbaa !91
  %i.ca = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cb = add <4 x i32> %i.ca, %i.by
  store <4 x i32> %i.cb, ptr %.sroa.7215.0..sroa_idx.2, align 16, !tbaa !91
  %i.cc = load <4 x i32>, ptr %i.t, align 16, !tbaa !91
  %i.cd = add <4 x i32> %i.cc, %i.by
  store <4 x i32> %i.cd, ptr %i.t, align 16, !tbaa !91
  %i.ce = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cf = add <4 x i32> %i.ce, %i.by
  store <4 x i32> %i.cf, ptr %.sroa.7215.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cg = add i32 %.pre, 24
  %i.ch = load <4 x i32>, ptr %i.v, align 16, !tbaa !91
  %i.ci = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ck = add <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.v, align 16, !tbaa !91
  %i.cl = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cm = add <4 x i32> %i.cl, %i.cj
  store <4 x i32> %i.cm, ptr %.sroa.7215.0..sroa_idx.3, align 16, !tbaa !91
  %i.cn = load <4 x i32>, ptr %i.x, align 16, !tbaa !91
  %i.co = add <4 x i32> %i.cn, %i.cj
  store <4 x i32> %i.co, ptr %i.x, align 16, !tbaa !91
  %i.cp = load <4 x i32>, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cq = add <4 x i32> %i.cp, %i.cj
  store <4 x i32> %i.cq, ptr %.sroa.7215.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.h, label %.split.us.us.us, label %.preheader

.preheader331:                                    ; preds = %.preheader332.preheader, %bb.b
  %.0105367 = phi i32 [ %i.cs, %bb.b ], [ 0, %.preheader332.preheader ] ; 4 uses
  %.sroa.30.0366 = phi i32 [ %i.cz, %bb.b ], [ 7, %.preheader332.preheader ] ; 3 uses
  %.sroa.26.0365 = phi i32 [ %i.cy, %bb.b ], [ 6, %.preheader332.preheader ] ; 3 uses
  %.sroa.22.0364 = phi i32 [ %i.cx, %bb.b ], [ 5, %.preheader332.preheader ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ %i.cw, %bb.b ], [ 4, %.preheader332.preheader ] ; 3 uses
  %.sroa.14205.0362 = phi i32 [ %i.cv, %bb.b ], [ 3, %.preheader332.preheader ] ; 3 uses
  %.sroa.10203.0361 = phi i32 [ %i.cu, %bb.b ], [ 2, %.preheader332.preheader ] ; 3 uses
  %.sroa.6201.0360 = phi i32 [ %i.ct, %bb.b ], [ 1, %.preheader332.preheader ] ; 3 uses
  %i.cr = add i32 %.0105367, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cs = add nuw i32 %.0105367, 32               ; 2 uses
  %i.ct = add nuw i32 %.sroa.6201.0360, 32
  %i.cu = add nuw i32 %.sroa.10203.0361, 32
  %i.cv = add nuw i32 %.sroa.14205.0362, 32
  %i.cw = add nuw i32 %.sroa.18.0363, 32
  %i.cx = add nuw i32 %.sroa.22.0364, 32
  %i.cy = add nuw i32 %.sroa.26.0365, 32
  %i.cz = add nuw i32 %.sroa.30.0366, 32
  %i.da = icmp ult i32 %i.cs, %i.d
  br i1 %i.da, label %.preheader331, label %.preheader335, !llvm.loop !272

bb.c:                                             ; preds = %.preheader331, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader331 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.db = shl i32 %indvars.iv.tr, 3
  %i.dc = add i32 %i.cr, %i.db
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.dd = icmp eq i8 %.1, 0
  br i1 %i.dd, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.h
  %.0102340 = phi i64 [ 0, %bb.c ], [ %i.du, %bb.h ] ; 4 uses
  %.0103339 = phi i8 [ 0, %bb.c ], [ %.1, %bb.h ] ; 2 uses
  %i.de = trunc nuw nsw i64 %.0102340 to i32
  %i.df = add i32 %i.dc, %i.de
  %.pre439 = zext i32 %i.df to i64                ; 2 uses
  br i1 %.not119, label %._crit_edge435, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = load ptr, ptr %7, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre439)
  br i1 %i.di, label %._crit_edge435, label %bb.g

._crit_edge435:                                   ; preds = %bb.e, %bb.f
  %i.dj = shl nuw nsw i64 %.pre439, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj
  %i.dl = load <8 x i64>, ptr %i.dk, align 8, !tbaa !31
  %i.dm = load <8 x i64>, ptr %2, align 8, !tbaa !31
  %i.dn = xor <8 x i64> %i.dm, %i.dl
  %i.do = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.dn)
  %i.dp = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.do)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !12
  %i.ds = add i8 %.0103339, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0102340
  store i32 2147483647, ptr %i.dt, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge435
  %.1 = phi i8 [ %i.ds, %._crit_edge435 ], [ %.0103339, %bb.g ] ; 2 uses
  %i.du = add nuw nsw i64 %.0102340, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, 8
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !273

.loopexit.loopexit:                               ; preds = %bb.d
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 16 ; 3 uses
  %.sroa.5178.0.copyload = load i32, ptr %.sroa.5178.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6180.0.copyload = load i32, ptr %.sroa.6180.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7182.0.copyload = load i32, ptr %.sroa.7182.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8184.0.copyload = load i32, ptr %.sroa.8184.0..sroa_idx, align 16 ; 3 uses
  %.sroa.9186.0.copyload = load i32, ptr %.sroa.9186.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10188.0.copyload = load i32, ptr %.sroa.10188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %8, i64 %indvars.iv ; 17 uses
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv ; 17 uses
  %.sroa.0137.sroa.0.0.copyload = load i32, ptr %i.dv, align 16 ; 3 uses
  %.sroa.0137.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16 ; 3 uses
  %.sroa.0137.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0137.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0137.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 28 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0136.sroa.0.0.copyload = load i32, ptr %i.dw, align 16 ; 2 uses
  %.sroa.0136.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0136.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0136.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0136.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.dx = icmp ult i32 %.sroa.0.0.copyload, %.sroa.0137.sroa.0.0.copyload ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload)
  %i.dy = select i1 %i.dx, i32 %.0105367, i32 %.sroa.0136.sroa.0.0.copyload
  %i.dz = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.copyload, i32 %.sroa.0137.sroa.0.0.copyload) ; 2 uses
  %i.ea = select i1 %i.dx, i32 %.sroa.0136.sroa.0.0.copyload, i32 %.0105367
  %i.eb = icmp ult i32 %.sroa.5178.0.copyload, %.sroa.0137.sroa.2.0.copyload ; 2 uses
  %..1.i = tail call i32 @llvm.umin.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload)
  %.sroa.speculated306 = select i1 %i.eb, i32 %.sroa.6201.0360, i32 %.sroa.0136.sroa.2.0.copyload
  %i.ec = tail call i32 @llvm.umax.i32(i32 %.sroa.5178.0.copyload, i32 %.sroa.0137.sroa.2.0.copyload) ; 2 uses
  %.sroa.speculated303 = select i1 %i.eb, i32 %.sroa.0136.sroa.2.0.copyload, i32 %.sroa.6201.0360
  %i.ed = icmp ult i32 %.sroa.6180.0.copyload, %.sroa.0137.sroa.3.0.copyload ; 2 uses
  %..2.i = tail call i32 @llvm.umin.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload)
  %.sroa.speculated300 = select i1 %i.ed, i32 %.sroa.10203.0361, i32 %.sroa.0136.sroa.3.0.copyload
  %i.ee = tail call i32 @llvm.umax.i32(i32 %.sroa.6180.0.copyload, i32 %.sroa.0137.sroa.3.0.copyload) ; 2 uses
  %.sroa.speculated297 = select i1 %i.ed, i32 %.sroa.0136.sroa.3.0.copyload, i32 %.sroa.10203.0361
  %i.ef = icmp ult i32 %.sroa.7182.0.copyload, %.sroa.0137.sroa.4.0.copyload ; 2 uses
  %..3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload)
  %.sroa.speculated294 = select i1 %i.ef, i32 %.sroa.14205.0362, i32 %.sroa.0136.sroa.4.0.copyload
  %i.eg = tail call i32 @llvm.umax.i32(i32 %.sroa.7182.0.copyload, i32 %.sroa.0137.sroa.4.0.copyload) ; 2 uses
  %.sroa.speculated291 = select i1 %i.ef, i32 %.sroa.0136.sroa.4.0.copyload, i32 %.sroa.14205.0362
  %i.eh = icmp ult i32 %.sroa.8184.0.copyload, %.sroa.0137.sroa.5.0.copyload ; 2 uses
  %..4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload)
  %.sroa.speculated288 = select i1 %i.eh, i32 %.sroa.18.0363, i32 %.sroa.0136.sroa.5.0.copyload
  %i.ei = tail call i32 @llvm.umax.i32(i32 %.sroa.8184.0.copyload, i32 %.sroa.0137.sroa.5.0.copyload) ; 2 uses
  %.sroa.speculated285 = select i1 %i.eh, i32 %.sroa.0136.sroa.5.0.copyload, i32 %.sroa.18.0363
  %i.ej = icmp ult i32 %.sroa.9186.0.copyload, %.sroa.0137.sroa.6.0.copyload ; 2 uses
  %..5.i = tail call i32 @llvm.umin.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload)
  %.sroa.speculated282 = select i1 %i.ej, i32 %.sroa.22.0364, i32 %.sroa.0136.sroa.6.0.copyload
  %i.ek = tail call i32 @llvm.umax.i32(i32 %.sroa.9186.0.copyload, i32 %.sroa.0137.sroa.6.0.copyload) ; 2 uses
  %.sroa.speculated279 = select i1 %i.ej, i32 %.sroa.0136.sroa.6.0.copyload, i32 %.sroa.22.0364
  %i.el = icmp ult i32 %.sroa.10188.0.copyload, %.sroa.0137.sroa.7.0.copyload ; 2 uses
  %..6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload)
  %.sroa.speculated276 = select i1 %i.el, i32 %.sroa.26.0365, i32 %.sroa.0136.sroa.7.0.copyload
  %i.em = tail call i32 @llvm.umax.i32(i32 %.sroa.10188.0.copyload, i32 %.sroa.0137.sroa.7.0.copyload) ; 2 uses
  %.sroa.speculated273 = select i1 %i.el, i32 %.sroa.0136.sroa.7.0.copyload, i32 %.sroa.26.0365
  %i.en = icmp ult i32 %.sroa.11.0.copyload, %.sroa.0137.sroa.8.0.copyload ; 2 uses
  %..7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload)
  %.sroa.speculated270 = select i1 %i.en, i32 %.sroa.30.0366, i32 %.sroa.0136.sroa.8.0.copyload
  %i.eo = tail call i32 @llvm.umax.i32(i32 %.sroa.11.0.copyload, i32 %.sroa.0137.sroa.8.0.copyload) ; 2 uses
  %.sroa.speculated = select i1 %i.en, i32 %.sroa.0136.sroa.8.0.copyload, i32 %.sroa.30.0366
  store i32 %..i, ptr %i.dv, align 16
  store i32 %..1.i, ptr %.sroa.0137.sroa.2.0..sroa_idx, align 4
  store i32 %..2.i, ptr %.sroa.0137.sroa.3.0..sroa_idx, align 8
  store i32 %..3.i, ptr %.sroa.0137.sroa.4.0..sroa_idx, align 4
  store i32 %..4.i, ptr %.sroa.0137.sroa.5.0..sroa_idx, align 16
  store i32 %..5.i, ptr %.sroa.0137.sroa.6.0..sroa_idx, align 4
  store i32 %..6.i, ptr %.sroa.0137.sroa.7.0..sroa_idx, align 8
  store i32 %..7.i, ptr %.sroa.0137.sroa.8.0..sroa_idx, align 4
  store i32 %i.dy, ptr %i.dw, align 16
  store i32 %.sroa.speculated306, ptr %.sroa.0136.sroa.2.0..sroa_idx, align 4
  store i32 %.sroa.speculated300, ptr %.sroa.0136.sroa.3.0..sroa_idx, align 8
  store i32 %.sroa.speculated294, ptr %.sroa.0136.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.speculated288, ptr %.sroa.0136.sroa.5.0..sroa_idx, align 16
  store i32 %.sroa.speculated282, ptr %.sroa.0136.sroa.6.0..sroa_idx, align 4
  store i32 %.sroa.speculated276, ptr %.sroa.0136.sroa.7.0..sroa_idx, align 8
  store i32 %.sroa.speculated270, ptr %.sroa.0136.sroa.8.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %.sroa.0137.sroa.0.0.copyload.1 = load i32, ptr %i.ep, align 16 ; 2 uses
  %.sroa.0137.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 36 ; 2 uses
  %.sroa.0137.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.2.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40 ; 2 uses
  %.sroa.0137.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.3.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44 ; 2 uses
  %.sroa.0137.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.4.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 48 ; 2 uses
  %.sroa.0137.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.5.0..sroa_idx.1, align 16 ; 2 uses
  %.sroa.0137.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 52 ; 2 uses
  %.sroa.0137.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.6.0..sroa_idx.1, align 4 ; 2 uses
  %.sroa.0137.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 56 ; 2 uses
  %.sroa.0137.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.7.0..sroa_idx.1, align 8 ; 2 uses
  %.sroa.0137.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dv, i64 60 ; 2 uses
  %.sroa.0137.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0137.sroa.8.0..sroa_idx.1, align 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 2 uses
  %.sroa.0136.sroa.0.0.copyload.1 = load i32, ptr %i.eq, align 16
  %.sroa.0136.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 36 ; 2 uses
  %.sroa.0136.sroa.2.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.2.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %.sroa.0136.sroa.3.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.3.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 44 ; 2 uses
  %.sroa.0136.sroa.4.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.4.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %.sroa.0136.sroa.5.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.5.0..sroa_idx.1, align 16
  %.sroa.0136.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 52 ; 2 uses
  %.sroa.0136.sroa.6.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.6.0..sroa_idx.1, align 4
  %.sroa.0136.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %.sroa.0136.sroa.7.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.7.0..sroa_idx.1, align 8
  %.sroa.0136.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dw, i64 60 ; 2 uses
  %.sroa.0136.sroa.8.0.copyload.1 = load i32, ptr %.sroa.0136.sroa.8.0..sroa_idx.1, align 4
  %i.er = icmp ult i32 %i.dz, %.sroa.0137.sroa.0.0.copyload.1
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %.sroa.0137.sroa.0.0.copyload.1)
  %i.es = select i1 %i.er, i32 %i.ea, i32 %.sroa.0136.sroa.0.0.copyload.1
  %i.et = icmp ult i32 %i.ec, %.sroa.0137.sroa.2.0.copyload.1
  %..1.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %.sroa.0137.sroa.2.0.copyload.1)
  %.sroa.speculated306.1 = select i1 %i.et, i32 %.sroa.speculated303, i32 %.sroa.0136.sroa.2.0.copyload.1
  %i.eu = icmp ult i32 %i.ee, %.sroa.0137.sroa.3.0.copyload.1
  %..2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %.sroa.0137.sroa.3.0.copyload.1)
  %.sroa.speculated300.1 = select i1 %i.eu, i32 %.sroa.speculated297, i32 %.sroa.0136.sroa.3.0.copyload.1
  %i.ev = icmp ult i32 %i.eg, %.sroa.0137.sroa.4.0.copyload.1
  %..3.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %.sroa.0137.sroa.4.0.copyload.1)
  %.sroa.speculated294.1 = select i1 %i.ev, i32 %.sroa.speculated291, i32 %.sroa.0136.sroa.4.0.copyload.1
  %i.ew = icmp ult i32 %i.ei, %.sroa.0137.sroa.5.0.copyload.1
  %..4.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 %.sroa.0137.sroa.5.0.copyload.1)
  %.sroa.speculated288.1 = select i1 %i.ew, i32 %.sroa.speculated285, i32 %.sroa.0136.sroa.5.0.copyload.1
  %i.ex = icmp ult i32 %i.ek, %.sroa.0137.sroa.6.0.copyload.1
  %..5.i.1 = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %.sroa.0137.sroa.6.0.copyload.1)
  %.sroa.speculated282.1 = select i1 %i.ex, i32 %.sroa.speculated279, i32 %.sroa.0136.sroa.6.0.copyload.1
  %i.ey = icmp ult i32 %i.em, %.sroa.0137.sroa.7.0.copyload.1
  %..6.i.1 = tail call i32 @llvm.umin.i32(i32 %i.em, i32 %.sroa.0137.sroa.7.0.copyload.1)
  %.sroa.speculated276.1 = select i1 %i.ey, i32 %.sroa.speculated273, i32 %.sroa.0136.sroa.7.0.copyload.1
  %i.ez = icmp ult i32 %i.eo, %.sroa.0137.sroa.8.0.copyload.1
  %..7.i.1 = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %.sroa.0137.sroa.8.0.copyload.1)
  %.sroa.speculated270.1 = select i1 %i.ez, i32 %.sroa.speculated, i32 %.sroa.0136.sroa.8.0.copyload.1
  store i32 %..i.1, ptr %i.ep, align 16
end_hunk_5
begin_hunk_6_@_ZN5faiss27HeapWithBucketsForHamming32INS_4CMaxIilEELj32ELj2ENS_26HammingComputerDefault_tplILNS_9SIMDLevelE0EEEE7bs_addnEjjRKS5_PKhjPiPlPKNS_10IDSelectorE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.l = zext i32 %4 to i64                       ; 11 uses
  %i.m = getelementptr inbounds i8, ptr %5, i64 -4 ; 16 uses
  %i.n = getelementptr inbounds i8, ptr %6, i64 -8 ; 20 uses
  %i.o = icmp ult i32 %4, 2                       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 5 uses
  %.not425 = icmp eq i32 %i.k, %1
  %i.p = zext i32 %1 to i64                       ; 2 uses
  %i.q = and i64 %i.p, 4294967264
  %.sroa.7261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.7261.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %.sroa.7253.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %.sroa.7261.0..sroa_idx.1432 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %.sroa.7253.0..sroa_idx.1439 = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.sroa.7261.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %.sroa.7253.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %.sroa.7261.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %8, i64 144
  %.sroa.7253.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 160
  %.sroa.7261.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %.sroa.7253.0..sroa_idx.1.2 = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 3 uses
  %.sroa.7261.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %8, i64 208
  %.sroa.7253.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 224
  %.sroa.7261.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 3 uses
  %.sroa.7253.0..sroa_idx.1.3 = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.preheader370.preheader

._crit_edge422:                                   ; preds = %._crit_edge, %bb.a
  ret void

.preheader370.preheader:                          ; preds = %.lr.ph421, %._crit_edge
  %.0109419 = phi i32 [ 0, %.lr.ph421 ], [ %i.wu, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  store <4 x i32> splat (i32 2147483647), ptr %8, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %9, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.r, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.s, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.t, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.1432, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.u, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.1439, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.v, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.1.1, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.w, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.1.1, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.x, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.y, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.z, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.1.2, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.aa, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.1.2, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ab, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.ac, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.3, align 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ad, align 16
  store <4 x i32> splat (i32 2147483647), ptr %.sroa.7261.0..sroa_idx.1.3, align 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.ae, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.7253.0..sroa_idx.1.3, align 16
  %.pre = mul i32 %.0109419, %1                   ; 6 uses
  br i1 %.not424, label %.preheader373, label %.preheader369

.preheader373:                                    ; preds = %bb.b, %.preheader370.preheader
  %i.bh = load <4 x i32>, ptr %9, align 16, !tbaa !91
  %i.bi = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %i.bj = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bk = add <4 x i32> %i.bh, %i.bj
  store <4 x i32> %i.bk, ptr %9, align 16, !tbaa !91
  %i.bl = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx, align 16, !tbaa !91
  %i.bm = add <4 x i32> %i.bl, %i.bj
  store <4 x i32> %i.bm, ptr %.sroa.7253.0..sroa_idx, align 16, !tbaa !91
  %i.bn = load <4 x i32>, ptr %i.s, align 16, !tbaa !91
  %i.bo = add <4 x i32> %i.bn, %i.bj
  store <4 x i32> %i.bo, ptr %i.s, align 16, !tbaa !91
  %i.bp = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.1, align 16, !tbaa !91
  %i.bq = add <4 x i32> %i.bp, %i.bj
  store <4 x i32> %i.bq, ptr %.sroa.7253.0..sroa_idx.1, align 16, !tbaa !91
  %i.br = add i32 %.pre, 8
  %i.bs = load <4 x i32>, ptr %i.u, align 16, !tbaa !91
  %i.bt = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bv = add <4 x i32> %i.bs, %i.bu
  store <4 x i32> %i.bv, ptr %i.u, align 16, !tbaa !91
  %i.bw = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.1439, align 16, !tbaa !91
  %i.bx = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %.sroa.7253.0..sroa_idx.1439, align 16, !tbaa !91
  %i.by = load <4 x i32>, ptr %i.w, align 16, !tbaa !91
  %i.bz = add <4 x i32> %i.by, %i.bu
  store <4 x i32> %i.bz, ptr %i.w, align 16, !tbaa !91
  %i.ca = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.cb = add <4 x i32> %i.ca, %i.bu
  store <4 x i32> %i.cb, ptr %.sroa.7253.0..sroa_idx.1.1, align 16, !tbaa !91
  %i.cc = add i32 %.pre, 16
  %i.cd = load <4 x i32>, ptr %i.y, align 16, !tbaa !91
  %i.ce = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cg = add <4 x i32> %i.cd, %i.cf
  store <4 x i32> %i.cg, ptr %i.y, align 16, !tbaa !91
  %i.ch = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.2, align 16, !tbaa !91
  %i.ci = add <4 x i32> %i.ch, %i.cf
  store <4 x i32> %i.ci, ptr %.sroa.7253.0..sroa_idx.2, align 16, !tbaa !91
  %i.cj = load <4 x i32>, ptr %i.aa, align 16, !tbaa !91
  %i.ck = add <4 x i32> %i.cj, %i.cf
  store <4 x i32> %i.ck, ptr %i.aa, align 16, !tbaa !91
  %i.cl = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cm = add <4 x i32> %i.cl, %i.cf
  store <4 x i32> %i.cm, ptr %.sroa.7253.0..sroa_idx.1.2, align 16, !tbaa !91
  %i.cn = add i32 %.pre, 24
  %i.co = load <4 x i32>, ptr %i.ac, align 16, !tbaa !91
  %i.cp = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cr = add <4 x i32> %i.co, %i.cq
  store <4 x i32> %i.cr, ptr %i.ac, align 16, !tbaa !91
  %i.cs = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.3, align 16, !tbaa !91
  %i.ct = add <4 x i32> %i.cs, %i.cq
  store <4 x i32> %i.ct, ptr %.sroa.7253.0..sroa_idx.3, align 16, !tbaa !91
  %i.cu = load <4 x i32>, ptr %i.ae, align 16, !tbaa !91
  %i.cv = add <4 x i32> %i.cu, %i.cq
  store <4 x i32> %i.cv, ptr %i.ae, align 16, !tbaa !91
  %i.cw = load <4 x i32>, ptr %.sroa.7253.0..sroa_idx.1.3, align 16, !tbaa !91
  %i.cx = add <4 x i32> %i.cw, %i.cq
  store <4 x i32> %i.cx, ptr %.sroa.7253.0..sroa_idx.1.3, align 16, !tbaa !91
  br i1 %i.o, label %.split.us.us.us, label %.preheader

.preheader369:                                    ; preds = %.preheader370.preheader, %bb.b
  %.0106406 = phi i32 [ %i.cz, %bb.b ], [ 0, %.preheader370.preheader ] ; 4 uses
  %.sroa.30.0405 = phi i32 [ %i.dg, %bb.b ], [ 7, %.preheader370.preheader ] ; 3 uses
  %.sroa.26.0404 = phi i32 [ %i.df, %bb.b ], [ 6, %.preheader370.preheader ] ; 3 uses
  %.sroa.22.0403 = phi i32 [ %i.de, %bb.b ], [ 5, %.preheader370.preheader ] ; 3 uses
  %.sroa.18.0402 = phi i32 [ %i.dd, %bb.b ], [ 4, %.preheader370.preheader ] ; 3 uses
  %.sroa.14243.0401 = phi i32 [ %i.dc, %bb.b ], [ 3, %.preheader370.preheader ] ; 3 uses
  %.sroa.10241.0400 = phi i32 [ %i.db, %bb.b ], [ 2, %.preheader370.preheader ] ; 3 uses
  %.sroa.6239.0399 = phi i32 [ %i.da, %bb.b ], [ 1, %.preheader370.preheader ] ; 3 uses
  %i.cy = add i32 %.0106406, %.pre
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.cz = add nuw i32 %.0106406, 32               ; 2 uses
  %i.da = add nuw i32 %.sroa.6239.0399, 32
  %i.db = add nuw i32 %.sroa.10241.0400, 32
  %i.dc = add nuw i32 %.sroa.14243.0401, 32
  %i.dd = add nuw i32 %.sroa.18.0402, 32
  %i.de = add nuw i32 %.sroa.22.0403, 32
  %i.df = add nuw i32 %.sroa.26.0404, 32
  %i.dg = add nuw i32 %.sroa.30.0405, 32
  %i.dh = icmp ult i32 %i.cz, %i.k
  br i1 %i.dh, label %.preheader369, label %.preheader373, !llvm.loop !306

bb.c:                                             ; preds = %.preheader369, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader369 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.di = shl i32 %indvars.iv.tr, 3
  %i.dj = add i32 %i.cy, %i.di
  br label %bb.e

bb.d:                                             ; preds = %bb.x
  %i.dk = icmp eq i8 %.1, 0
  br i1 %i.dk, label %.loopexit, label %.loopexit.loopexit

bb.e:                                             ; preds = %bb.c, %bb.x
  %.0103379 = phi i64 [ 0, %bb.c ], [ %i.ih, %bb.x ] ; 4 uses
  %.0104378 = phi i8 [ 0, %bb.c ], [ %.1, %bb.x ] ; 2 uses
  %i.dl = trunc nuw nsw i64 %.0103379 to i32
  %i.dm = add i32 %i.dj, %i.dl
  %.pre478 = zext i32 %i.dm to i64                ; 2 uses
  br i1 %.not120, label %._crit_edge474, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dn = load ptr, ptr %7, align 8, !tbaa !93
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.pre478)
  br i1 %i.dp, label %._crit_edge474, label %bb.w

._crit_edge474:                                   ; preds = %bb.e, %bb.f
  %i.dq = mul nsw i64 %.pre478, %i.j
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq ; 9 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !280   ; 9 uses
  %i.dt = load i32, ptr %i.d, align 8, !tbaa !282 ; 10 uses
  %i.du = load i32, ptr %i.g, align 4, !tbaa !283 ; 4 uses
  %i.dv = and i32 %i.dt, 7                        ; 3 uses
  switch i32 %i.dv, label %._crit_edge474.unreachabledefault [
    i32 7, label %bb.i
    i32 6, label %bb.j
    i32 5, label %bb.k
    i32 4, label %bb.l
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 1, label %bb.o
    i32 0, label %bb.g
  ]

._crit_edge474.unreachabledefault:                ; preds = %._crit_edge474
  unreachable

default.unreachable:                              ; preds = %._crit_edge475
  unreachable

bb.g:                                             ; preds = %bb.o, %._crit_edge474
  %.090.i = phi i32 [ %i.gy, %bb.o ], [ %i.dv, %._crit_edge474 ] ; 4 uses
  %.082.i = phi i32 [ %i.gz, %bb.o ], [ %i.dv, %._crit_edge474 ] ; 2 uses
  %.080.i = phi i32 [ %.7.i, %bb.o ], [ %i.dt, %._crit_edge474 ] ; 2 uses
  %i.dw = icmp sgt i32 %.080.i, 7
  br i1 %i.dw, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.dx = add nsw i32 %.080.i, -8
  %i.dy = sext i32 %.082.i to i64                 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !31
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dy
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !31
  %i.ed = xor i64 %i.ec, %i.ea
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ed)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = add nsw i32 %.090.i, %i.ef
  %i.eh = add nsw i32 %.082.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge474
  %.191.i = phi i32 [ 0, %._crit_edge474 ], [ %i.eg, %bb.h ]
  %.183.i = phi i32 [ 0, %._crit_edge474 ], [ %i.eh, %bb.h ] ; 2 uses
  %.181.i = phi i32 [ %i.dt, %._crit_edge474 ], [ %i.dx, %bb.h ]
  %i.ei = sext i32 %.183.i to i64                 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !31
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ei
  %i.em = load i64, ptr %i.el, align 8, !tbaa !31
  %i.en = xor i64 %i.em, %i.ek
  %i.eo = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.en)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = add nsw i32 %.191.i, %i.ep
  %i.er = add nsw i32 %.183.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge474
  %.292.i = phi i32 [ %i.eq, %bb.i ], [ 0, %._crit_edge474 ]
  %.284.i = phi i32 [ %i.er, %bb.i ], [ 0, %._crit_edge474 ] ; 2 uses
  %.2.i = phi i32 [ %.181.i, %bb.i ], [ %i.dt, %._crit_edge474 ]
  %i.es = sext i32 %.284.i to i64                 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !31
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !31
  %i.ex = xor i64 %i.ew, %i.eu
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ex)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = add nsw i32 %.292.i, %i.ez
  %i.fb = add nsw i32 %.284.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge474
  %.393.i = phi i32 [ %i.fa, %bb.j ], [ 0, %._crit_edge474 ]
  %.385.i = phi i32 [ %i.fb, %bb.j ], [ 0, %._crit_edge474 ] ; 2 uses
  %.3.i = phi i32 [ %.2.i, %bb.j ], [ %i.dt, %._crit_edge474 ]
  %i.fc = sext i32 %.385.i to i64                 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !31
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fc
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !31
  %i.fh = xor i64 %i.fg, %i.fe
  %i.fi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fh)
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = add nsw i32 %.393.i, %i.fj
  %i.fl = add nsw i32 %.385.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge474
  %.494.i = phi i32 [ %i.fk, %bb.k ], [ 0, %._crit_edge474 ]
  %.486.i = phi i32 [ %i.fl, %bb.k ], [ 0, %._crit_edge474 ] ; 2 uses
  %.4.i = phi i32 [ %.3.i, %bb.k ], [ %i.dt, %._crit_edge474 ]
  %i.fm = sext i32 %.486.i to i64                 ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !31
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fm
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !31
  %i.fr = xor i64 %i.fq, %i.fo
  %i.fs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fr)
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = add nsw i32 %.494.i, %i.ft
  %i.fv = add nsw i32 %.486.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge474
  %.595.i = phi i32 [ %i.fu, %bb.l ], [ 0, %._crit_edge474 ]
  %.587.i = phi i32 [ %i.fv, %bb.l ], [ 0, %._crit_edge474 ] ; 2 uses
  %.5.i = phi i32 [ %.4.i, %bb.l ], [ %i.dt, %._crit_edge474 ]
  %i.fw = sext i32 %.587.i to i64                 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !31
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fw
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !31
  %i.gb = xor i64 %i.ga, %i.fy
  %i.gc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gb)
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = add nsw i32 %.595.i, %i.gd
  %i.gf = add nsw i32 %.587.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge474
  %.696.i = phi i32 [ %i.ge, %bb.m ], [ 0, %._crit_edge474 ]
  %.688.i = phi i32 [ %i.gf, %bb.m ], [ 0, %._crit_edge474 ] ; 2 uses
  %.6.i = phi i32 [ %.5.i, %bb.m ], [ %i.dt, %._crit_edge474 ]
  %i.gg = sext i32 %.688.i to i64                 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !31
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.gg
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !31
  %i.gl = xor i64 %i.gk, %i.gi
  %i.gm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gl)
  %i.gn = trunc nuw nsw i64 %i.gm to i32
  %i.go = add nsw i32 %.696.i, %i.gn
  %i.gp = add nsw i32 %.688.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge474
  %.797.i = phi i32 [ %i.go, %bb.n ], [ 0, %._crit_edge474 ]
  %.789.i = phi i32 [ %i.gp, %bb.n ], [ 0, %._crit_edge474 ] ; 2 uses
  %.7.i = phi i32 [ %.6.i, %bb.n ], [ %i.dt, %._crit_edge474 ]
  %i.gq = sext i32 %.789.i to i64                 ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !31
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.gq
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !31
  %i.gv = xor i64 %i.gu, %i.gs
  %i.gw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gv)
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = add nsw i32 %.797.i, %i.gx
  %i.gz = add nsw i32 %.789.i, 1
  br label %bb.g, !llvm.loop !284

bb.p:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.du, 0
  br i1 %.not.i, label %_ZN5faiss21hamming_popcount_tailEPKmS1_iiPKhS3_i.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ha = shl nsw i32 %i.dt, 3
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.ds, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %i.dr, i64 %i.hb ; 3 uses
  %i.he = icmp sgt i32 %i.du, 3
  br i1 %i.he, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hf = load i32, ptr %i.hc, align 4, !tbaa !12
  %i.hg = load i32, ptr %i.hd, align 4, !tbaa !12
  %i.hh = xor i32 %i.hg, %i.hf
  %i.hi = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hh)
  %i.hj = add nsw i32 %i.hi, %.090.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hm = add nsw i32 %i.du, -4
  br label %bb.s
end_hunk_6
