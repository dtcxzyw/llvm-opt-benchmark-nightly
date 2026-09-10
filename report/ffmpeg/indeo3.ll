Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/indeo3?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_cell_data:bb.a
  %i.q = icmp samesign ugt i32 %6, 4              ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.t = icmp samesign ugt i32 %6, 9
  %i.u = icmp eq i32 %6, 10                       ; 4 uses
  %i.v = icmp samesign ugt i32 %6, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.x = icmp samesign ult i32 %6, 5
  %i.y = shl nuw nsw i32 4, %4
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = add nuw nsw i32 %4, 1
  %i.ab = add nuw nsw i32 %5, 1
  %.not122.not = icmp eq i32 %5, 0
  %lcmp.mod103 = icmp eq i32 %5, 0
  %i.ac = icmp eq i32 %5, 0                       ; 3 uses
  %xtraiter116.a = select i1 %i.ac, i32 4, i32 0
  %.not123.not = icmp eq i32 %5, 0
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %._crit_edge
  %i.ad = phi i16 [ %i.l, %.preheader29.lr.ph ], [ %i.of, %._crit_edge ]
  %i.ae = phi i16 [ %i.e, %.preheader29.lr.ph ], [ %i.og, %._crit_edge ] ; 2 uses
  %.not34559 = phi i1 [ false, %.preheader29.lr.ph ], [ true, %._crit_edge ] ; 2 uses
  %.029858 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.1299.lcssa, %._crit_edge ] ; 2 uses
  %.030857 = phi i32 [ 0, %.preheader29.lr.ph ], [ %.1309.lcssa, %._crit_edge ] ; 2 uses
  %.032056 = phi i32 [ 0, %.preheader29.lr.ph ], [ %i.oj, %._crit_edge ]
  %.032255 = phi ptr [ %1, %.preheader29.lr.ph ], [ %i.oi, %._crit_edge ] ; 2 uses
  %.032554 = phi ptr [ %2, %.preheader29.lr.ph ], [ %i.oh, %._crit_edge ] ; 2 uses
  %i.af = icmp sgt i16 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader29, %.loopexit
  %.129950 = phi i32 [ %.7, %.loopexit ], [ %.029858, %.preheader29 ] ; 3 uses
  %.130949 = phi i32 [ %.7315, %.loopexit ], [ %.030857, %.preheader29 ] ; 3 uses
  %.032148 = phi i32 [ %i.ob, %.loopexit ], [ 0, %.preheader29 ]
  %.132346 = phi ptr [ %i.nz, %.loopexit ], [ %.032255, %.preheader29 ] ; 8 uses
  %.132644 = phi ptr [ %i.oa, %.loopexit ], [ %.032554, %.preheader29 ] ; 6 uses
  %i.ag = icmp sgt i32 %.130949, 0
  br i1 %i.ag, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp ne i32 %.129950, 0
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %copy_block4.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %.not123.not, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0811.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.132346, %.lr.ph.i.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.132644, %.lr.ph.i.preheader ] ; 2 uses
  %niter121 = phi i32 [ %niter121.next.7, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.0910.i, align 1, !tbaa !36
  store i32 %i.ak, ptr %.0811.i, align 1, !tbaa !36
  %i.al = getelementptr inbounds i8, ptr %.0811.i, i64 %3 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.0910.i, i64 %3 ; 2 uses
  %i.an = load i32, ptr %i.am, align 1, !tbaa !36
  store i32 %i.an, ptr %i.al, align 1, !tbaa !36
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %3 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %3 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !36
  store i32 %i.aq, ptr %i.ao, align 1, !tbaa !36
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %3 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %3 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !36
  store i32 %i.at, ptr %i.ar, align 1, !tbaa !36
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %3 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %3 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !36
  store i32 %i.aw, ptr %i.au, align 1, !tbaa !36
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %3 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %3 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !36
  store i32 %i.az, ptr %i.ax, align 1, !tbaa !36
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %3 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %3 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !36
  store i32 %i.bc, ptr %i.ba, align 1, !tbaa !36
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %3 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %3 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !36
  store i32 %i.bf, ptr %i.bd, align 1, !tbaa !36
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %3 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %3 ; 2 uses
  %niter121.next.7 = add i32 %niter121, 8
  %niter121.ncmp.7 = icmp eq i32 %niter121, 0
  br i1 %niter121.ncmp.7, label %copy_block4.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !97

bb.d:                                             ; preds = %bb.b
  br i1 %i.u, label %bb.e, label %copy_block4.exit

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not358 = icmp eq ptr %i.bi, null
  br i1 %.not358, label %bb.f, label %copy_block4.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = load i64, ptr %.132644, align 1, !tbaa !36 ; 9 uses
  br i1 %.not34559, label %.lr.ph.i365.preheader, label %.lr.ph.i364

.lr.ph.i365.preheader:                            ; preds = %bb.f
  store i64 %i.bj, ptr %.132346, align 8, !tbaa !36
  %i.bk = getelementptr inbounds i8, ptr %.132346, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !36
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !36
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bo, align 8, !tbaa !36
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %3 ; 2 uses
  store i64 %i.bj, ptr %i.bp, align 8, !tbaa !36
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %3
  store i64 %i.bj, ptr %i.bq, align 8, !tbaa !36
  br label %copy_block4.exit

.lr.ph.i364:                                      ; preds = %bb.f
  %i.br = and i64 %i.bj, 71777214294589695
  %i.bs = mul nuw i64 %i.br, 257                  ; 7 uses
  %i.bt = getelementptr inbounds i8, ptr %.132346, i64 %3 ; 3 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !36
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !36
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bv, align 8, !tbaa !36
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bw, align 8, !tbaa !36
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.bx, align 8, !tbaa !36
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %3 ; 2 uses
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !36
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %3
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !36
  %i.ca = load i64, ptr %.132644, align 1, !tbaa !36
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = and i64 %i.cd, 9187201950435737471
  store i64 %i.ce, ptr %.132346, align 8, !tbaa !36
  br label %copy_block4.exit

copy_block4.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %copy_block4.exit

.lr.ph.i.epil.preheader:                          ; preds = %copy_block4.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0811.i.epil.init = phi ptr [ %.132346, %.lr.ph.i.preheader ], [ %i.bg, %copy_block4.exit.loopexit.unr-lcssa ]
  %.0910.i.epil.init = phi ptr [ %.132644, %.lr.ph.i.preheader ], [ %i.bh, %copy_block4.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %i.ac)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0811.i.epil = phi ptr [ %i.cg, %.lr.ph.i.epil ], [ %.0811.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0910.i.epil = phi ptr [ %i.ch, %.lr.ph.i.epil ], [ %.0910.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i32 [ %epil.iter117.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cf = load i32, ptr %.0910.i.epil, align 1, !tbaa !36
  store i32 %i.cf, ptr %.0811.i.epil, align 1, !tbaa !36
  %i.cg = getelementptr inbounds i8, ptr %.0811.i.epil, i64 %3
  %i.ch = getelementptr inbounds i8, ptr %.0910.i.epil, i64 %3
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116.a
  br i1 %epil.iter117.cmp.not, label %copy_block4.exit, label %.lr.ph.i.epil, !llvm.loop !98

copy_block4.exit:                                 ; preds = %copy_block4.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph.i365.preheader, %bb.d, %bb.e, %.lr.ph.i364, %bb.c
  %i.ci = add nsw i32 %.130949, -1
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.thread2
  %.029142 = phi ptr [ %i.nx, %.thread2 ], [ %.132346, %.lr.ph ] ; 31 uses
  %.029341 = phi ptr [ %i.nw, %.thread2 ], [ %.132644, %.lr.ph ] ; 18 uses
  %.230040 = phi i32 [ %.5303, %.thread2 ], [ %.129950, %.lr.ph ] ; 11 uses
  %.231039 = phi i32 [ %.5313, %.thread2 ], [ %.130949, %.lr.ph ] ; 11 uses
  %.031838 = phi i32 [ %i.ns, %.thread2 ], [ 0, %.lr.ph ] ; 5 uses
  %.not346 = icmp ne i32 %.031838, 0              ; 2 uses
  %spec.select.not = or i1 %.not34559, %.not346   ; 4 uses
  %i.cj = and i32 %.031838, 1
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ck
  %.0307.in = select i1 %i.q, ptr %i.r, ptr %i.cl
  %.0307 = load ptr, ptr %.0307.in, align 8, !tbaa !67 ; 11 uses
  %i.cm = load ptr, ptr %9, align 8, !tbaa !58    ; 5 uses
  %.not347 = icmp ult ptr %i.cm, %10
  br i1 %.not347, label %bb.g, label %.thread12

bb.g:                                             ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 5 uses
  store ptr %i.cn, ptr %9, align 8, !tbaa !58
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !36  ; 5 uses
  %i.cp = zext i8 %i.co to i32                    ; 4 uses
  %i.cq = icmp ult i8 %i.co, -8
  br i1 %i.cq, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.0307, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !109 ; 3 uses
  %i.ct = icmp ult i8 %i.co, %i.cs
  br i1 %i.ct, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not354 = icmp ult ptr %i.cn, %10
  br i1 %.not354, label %bb.j, label %.thread12

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.cu, ptr %9, align 8, !tbaa !58
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !36  ; 3 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = icmp uge i8 %i.cv, %i.cs
  %i.cy = icmp ugt i8 %i.cv, -9
  %or.cond4 = or i1 %i.cx, %i.cy
  br i1 %or.cond4, label %.thread12, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cz = sub nuw i8 %i.co, %i.cs                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0307, i64 17
  %i.db = load i8, ptr %i.da, align 1, !tbaa !110 ; 2 uses
  %i.dc = udiv i8 %i.cz, %i.db
  %.zext = zext i8 %i.dc to i32                   ; 2 uses
  %i.dd = urem i8 %i.cz, %i.db
  %.zext21 = zext i8 %i.dd to i32                 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ck
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41
  %.not353 = icmp eq i32 %i.df, 0                 ; 2 uses
  %spec.select361 = select i1 %.not353, i32 %.zext, i32 %.zext21
  %spec.select362 = select i1 %.not353, i32 %.zext21, i32 %.zext
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0306 = phi i32 [ %i.cw, %bb.j ], [ %spec.select361, %bb.k ] ; 5 uses
  %.0305 = phi i32 [ %i.cp, %bb.j ], [ %spec.select362, %bb.k ] ; 5 uses
  br i1 %i.q, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i16, ptr %.029341, align 1, !tbaa !36
  %i.dh = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.di = zext nneg i32 %.0306 to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !55
  %i.dl = add i16 %i.dk, %i.dg
  %i.dm = and i16 %i.dl, 32639
  %i.dn = getelementptr inbounds i8, ptr %.029142, i64 %i.j ; 2 uses
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %.029341, i64 2
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !36
  %i.dq = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.dr = zext nneg i32 %.0305 to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !55
  %i.du = add i16 %i.dt, %i.dp
  %i.dv = and i16 %i.du, 32639
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !36
  br i1 %i.v, label %bb.n, label %.thread2

bb.n:                                             ; preds = %bb.m
  br i1 %spec.select.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = load i16, ptr %i.w, align 2, !tbaa !53
  %.not357 = icmp eq i16 %i.dx, 0
  br i1 %.not357, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !36
  store i32 %i.dz, ptr %.029142, align 1, !tbaa !36
  br label %.thread2

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ea = load i32, ptr %.029341, align 1, !tbaa !36
  %i.eb = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !36
  %i.ed = add i32 %i.ec, %i.ea
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = and i32 %i.ee, 2139062143
  store i32 %i.ef, ptr %.029142, align 4, !tbaa !36
  br label %.thread2

bb.r:                                             ; preds = %bb.l
  br i1 %i.u, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not355 = icmp eq ptr %i.eg, null
  br i1 %.not355, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.eh = load i32, ptr %.029341, align 1, !tbaa !36 ; 2 uses
  br i1 %spec.select.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !112
  %i.ek = zext nneg i32 %.0306 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !41
  %i.en = add i32 %i.em, %i.eh
  %i.eo = and i32 %i.en, 2139062143
  %i.ep = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.029341, i64 4
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !36
  %i.es = load ptr, ptr %i.ei, align 8, !tbaa !112
  %i.et = zext nneg i32 %.0305 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = add i32 %i.ev, %i.er
  %i.ex = and i32 %i.ew, 2139062143
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !36
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ez = and i32 %i.eh, 16711935
  %i.fa = mul nuw i32 %i.ez, 257
  %i.fb = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !112
  %i.fd = zext nneg i32 %.0306 to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = add i32 %i.fa, %i.ff
  %i.fh = and i32 %i.fg, 2139062143
  %i.fi = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 3 uses
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %.029341, i64 4
  %i.fk = load i32, ptr %i.fj, align 1, !tbaa !36
  %i.fl = and i32 %i.fk, 16711935
  %i.fm = mul nuw i32 %i.fl, 257
  %i.fn = load ptr, ptr %i.fb, align 8, !tbaa !112
  %i.fo = zext nneg i32 %.0305 to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !41
  %i.fr = add i32 %i.fm, %i.fq
  %i.fs = and i32 %i.fr, 2139062143
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !36
  %i.fu = load i16, ptr %i.w, align 2, !tbaa !53
  %.not356 = icmp eq i16 %i.fu, 0
  br i1 %.not356, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fv = load i64, ptr %i.fi, align 4, !tbaa !36
  store i64 %i.fv, ptr %.029142, align 1, !tbaa !36
  br label %.thread2

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.fw = load i64, ptr %.029341, align 1, !tbaa !36
  %i.fx = getelementptr inbounds i8, ptr %.029142, i64 %3
  %i.fy = load i64, ptr %i.fx, align 1, !tbaa !36
  %i.fz = add i64 %i.fy, %i.fw
  %i.ga = lshr i64 %i.fz, 1
  %i.gb = and i64 %i.ga, 9187201950435737471
  store i64 %i.gb, ptr %.029142, align 8, !tbaa !36
  br label %.thread2

bb.y:                                             ; preds = %bb.s
  %i.gc = load i32, ptr %.029142, align 1, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %.0307, i64 8 ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.gf = zext nneg i32 %.0306 to i64             ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !41
  %i.gi = add i32 %i.gh, %i.gc
  %i.gj = and i32 %i.gi, 2139062143
  store i32 %i.gj, ptr %.029142, align 4, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %.029142, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.gn = zext nneg i32 %.0305 to i64             ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !41
  %i.gq = add i32 %i.gp, %i.gl
  %i.gr = and i32 %i.gq, 2139062143
  store i32 %i.gr, ptr %i.gk, align 4, !tbaa !36
  %i.gs = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 1, !tbaa !36
  %i.gu = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gf
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !41
  %i.gx = add i32 %i.gw, %i.gt
  %i.gy = and i32 %i.gx, 2139062143
  store i32 %i.gy, ptr %i.gs, align 4, !tbaa !36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !36
  %i.hb = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.gn
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !41
  %i.he = add i32 %i.hd, %i.ha
  %i.hf = and i32 %i.he, 2139062143
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !36
  br label %.thread2

.critedge:                                        ; preds = %bb.r
  %i.hg = load i16, ptr %.029142, align 1, !tbaa !36
  %i.hh = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.hi = zext nneg i32 %.0306 to i64             ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !55
  %i.hl = add i16 %i.hk, %i.hg
  %i.hm = and i16 %i.hl, 32639
  store i16 %i.hm, ptr %.029142, align 2, !tbaa !36
  %i.hn = getelementptr inbounds nuw i8, ptr %.029142, i64 2 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !36
  %i.hp = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.hq = zext nneg i32 %.0305 to i64             ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !55
  %i.ht = add i16 %i.hs, %i.ho
  %i.hu = and i16 %i.ht, 32639
  store i16 %i.hu, ptr %i.hn, align 2, !tbaa !36
  %i.hv = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 3 uses
  %i.hw = load i16, ptr %i.hv, align 1, !tbaa !36
  %i.hx = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %i.hi
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !55
  %i.ia = add i16 %i.hz, %i.hw
  %i.ib = and i16 %i.ia, 32639
  store i16 %i.ib, ptr %i.hv, align 2, !tbaa !36
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 2 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !36
  %i.ie = load ptr, ptr %.0307, align 8, !tbaa !111
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.hq
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !55
  %i.ih = add i16 %i.ig, %i.id
  %i.ii = and i16 %i.ih, 32639
  store i16 %i.ii, ptr %i.ic, align 2, !tbaa !36
  br label %.thread2

bb.z:                                             ; preds = %bb.g
  switch i8 %i.co, label %.thread12 [
    i8 -4, label %bb.aa
    i8 -1, label %bb.ab
    i8 -2, label %bb.ab
    i8 -3, label %bb.ab
    i8 -5, label %bb.ah
    i8 -7, label %bb.ao
    i8 -6, label %bb.ap
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.z, %bb.z
  %.3311 = phi i32 [ 1, %bb.aa ], [ %.231039, %bb.z ], [ %.231039, %bb.z ], [ %.231039, %bb.z ] ; 6 uses
  %.3301 = phi i32 [ 0, %bb.aa ], [ %.230040, %bb.z ], [ %.230040, %bb.z ], [ %.230040, %bb.z ] ; 6 uses
  %.0290 = phi i32 [ 253, %bb.aa ], [ %i.cp, %bb.z ], [ %i.cp, %bb.z ], [ %i.cp, %bb.z ] ; 3 uses
  %i.ij = add nuw nsw i32 %.031838, %.0290        ; 2 uses
  %i.ik = sub nsw i32 257, %i.ij                  ; 9 uses
  %i.il = icmp sgt i32 %i.ij, 256
  br i1 %i.il, label %.thread12, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.q, label %bb.ad, label %.lr.ph.i369.preheader

.lr.ph.i369.preheader:                            ; preds = %bb.ac
  %i.im = shl nuw nsw i32 %i.ik, %5               ; 3 uses
  %xtraiter110 = and i32 %i.im, 7                 ; 3 uses
  %i.in = icmp ult i32 %i.im, 8
  br i1 %i.in, label %.lr.ph.i369.epil.preheader, label %.lr.ph.i369.preheader.new

.lr.ph.i369.preheader.new:                        ; preds = %.lr.ph.i369.preheader
  %unroll_iter114 = and i32 %i.im, -8
  br label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %.lr.ph.i369, %.lr.ph.i369.preheader.new
  %.0811.i371 = phi ptr [ %.029142, %.lr.ph.i369.preheader.new ], [ %i.jk, %.lr.ph.i369 ] ; 2 uses
  %.0910.i372 = phi ptr [ %.029341, %.lr.ph.i369.preheader.new ], [ %i.jl, %.lr.ph.i369 ] ; 2 uses
  %niter115 = phi i32 [ 0, %.lr.ph.i369.preheader.new ], [ %niter115.next.7, %.lr.ph.i369 ]
  %i.io = load i32, ptr %.0910.i372, align 1, !tbaa !36
  store i32 %i.io, ptr %.0811.i371, align 1, !tbaa !36
  %i.ip = getelementptr inbounds i8, ptr %.0811.i371, i64 %3 ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.0910.i372, i64 %3 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 1, !tbaa !36
  store i32 %i.ir, ptr %i.ip, align 1, !tbaa !36
  %i.is = getelementptr inbounds i8, ptr %i.ip, i64 %3 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %3 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 1, !tbaa !36
  store i32 %i.iu, ptr %i.is, align 1, !tbaa !36
  %i.iv = getelementptr inbounds i8, ptr %i.is, i64 %3 ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %i.it, i64 %3 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 1, !tbaa !36
  store i32 %i.ix, ptr %i.iv, align 1, !tbaa !36
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %3 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %i.iw, i64 %3 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 1, !tbaa !36
  store i32 %i.ja, ptr %i.iy, align 1, !tbaa !36
  %i.jb = getelementptr inbounds i8, ptr %i.iy, i64 %3 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 %3 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 1, !tbaa !36
  store i32 %i.jd, ptr %i.jb, align 1, !tbaa !36
  %i.je = getelementptr inbounds i8, ptr %i.jb, i64 %3 ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 %3 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 1, !tbaa !36
  store i32 %i.jg, ptr %i.je, align 1, !tbaa !36
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 %3 ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %3 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 1, !tbaa !36
  store i32 %i.jj, ptr %i.jh, align 1, !tbaa !36
  %i.jk = getelementptr inbounds i8, ptr %i.jh, i64 %3 ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 %3 ; 2 uses
  %niter115.next.7 = add i32 %niter115, 8         ; 2 uses
  %niter115.ncmp.7 = icmp eq i32 %niter115.next.7, %unroll_iter114
  br i1 %niter115.ncmp.7, label %.thread2.loopexit96.unr-lcssa, label %.lr.ph.i369, !llvm.loop !97

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.u, label %bb.ae, label %.thread2

bb.ae:                                            ; preds = %bb.ad
  %i.jm = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not352 = icmp eq ptr %i.jm, null
  br i1 %.not352, label %bb.af, label %.thread2

bb.af:                                            ; preds = %bb.ae
  %i.jn = load i64, ptr %.029341, align 1, !tbaa !36 ; 2 uses
  br i1 %spec.select.not, label %.lr.ph.i379.preheader, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jo = and i64 %i.jn, 71777214294589695
  %i.jp = mul nuw i64 %i.jo, 257                  ; 9 uses
  %i.jq = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 2 uses
  %11 = shl nuw nsw i32 %.0290, 1
  %12 = sub nsw i32 1, %11
  %xtraiter116 = and i32 %12, 7
  %i.jr = shl nuw nsw i32 %i.ik, 1
  br label %.lr.ph.i375.prol

.lr.ph.i375.prol:                                 ; preds = %.lr.ph.i375.prol, %bb.ag
  %.07.i376.prol = phi ptr [ %13, %.lr.ph.i375.prol ], [ %i.jq, %bb.ag ] ; 2 uses
  %.056.i377.in.prol = phi i32 [ %.056.i377.prol, %.lr.ph.i375.prol ], [ %i.jr, %bb.ag ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i375.prol ], [ 0, %bb.ag ]
  %.056.i377.prol = add nsw i32 %.056.i377.in.prol, -1 ; 2 uses
  store i64 %i.jp, ptr %.07.i376.prol, align 8, !tbaa !36
  %13 = getelementptr inbounds i8, ptr %.07.i376.prol, i64 %3 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter116
  br i1 %prol.iter.cmp.not, label %.lr.ph.i375.prol.loopexit, label %.lr.ph.i375.prol, !llvm.loop !99

.lr.ph.i375.prol.loopexit:                        ; preds = %.lr.ph.i375.prol
  %14 = icmp samesign ugt i32 %.0290, 252
  br i1 %14, label %fill_64.exit378, label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %.lr.ph.i375.prol.loopexit, %.lr.ph.i375
  %.07.i376 = phi ptr [ %i.js, %.lr.ph.i375 ], [ %13, %.lr.ph.i375.prol.loopexit ] ; 2 uses
  %.056.i377.in = phi i32 [ %.056.i377, %.lr.ph.i375 ], [ %.056.i377.prol, %.lr.ph.i375.prol.loopexit ] ; 2 uses
  store i64 %i.jp, ptr %.07.i376, align 8, !tbaa !36
  %15 = getelementptr inbounds i8, ptr %.07.i376, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %15, align 8, !tbaa !36
  %16 = getelementptr inbounds i8, ptr %15, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %16, align 8, !tbaa !36
  %17 = getelementptr inbounds i8, ptr %16, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %17, align 8, !tbaa !36
  %18 = getelementptr inbounds i8, ptr %17, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %18, align 8, !tbaa !36
  %19 = getelementptr inbounds i8, ptr %18, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %19, align 8, !tbaa !36
  %20 = getelementptr inbounds i8, ptr %19, i64 %3 ; 2 uses
  store i64 %i.jp, ptr %20, align 8, !tbaa !36
  %21 = getelementptr inbounds i8, ptr %20, i64 %3 ; 2 uses
  %.056.i377 = add nsw i32 %.056.i377.in, -8
  store i64 %i.jp, ptr %21, align 8, !tbaa !36
  %i.js = getelementptr inbounds i8, ptr %21, i64 %3
  %i.jt = icmp sgt i32 %.056.i377.in, 9
  br i1 %i.jt, label %.lr.ph.i375, label %fill_64.exit378, !llvm.loop !100

fill_64.exit378:                                  ; preds = %.lr.ph.i375, %.lr.ph.i375.prol.loopexit
  %i.ju = load i64, ptr %.029341, align 1, !tbaa !36
  %i.jv = load i64, ptr %i.jq, align 1, !tbaa !36
  %i.jw = add i64 %i.jv, %i.ju
  %i.jx = lshr i64 %i.jw, 1
  %i.jy = and i64 %i.jx, 9187201950435737471
  store i64 %i.jy, ptr %.029142, align 8, !tbaa !36
  br label %.thread2

.lr.ph.i379.preheader:                            ; preds = %bb.af
  %i.jz = shl nuw nsw i32 %i.ik, 1
  br label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.lr.ph.i379.preheader, %.lr.ph.i379
  %.07.i380 = phi ptr [ %i.ka, %.lr.ph.i379 ], [ %.029142, %.lr.ph.i379.preheader ] ; 2 uses
  %.056.i381 = phi i32 [ %i.kb, %.lr.ph.i379 ], [ %i.jz, %.lr.ph.i379.preheader ] ; 2 uses
  store i64 %i.jn, ptr %.07.i380, align 8, !tbaa !36
  %i.ka = getelementptr inbounds i8, ptr %.07.i380, i64 %3
  %i.kb = add nsw i32 %.056.i381, -1
  %i.kc = icmp samesign ugt i32 %.056.i381, 1
  br i1 %i.kc, label %.lr.ph.i379, label %.thread2, !llvm.loop !100

bb.ah:                                            ; preds = %bb.z
  %.not350 = icmp ult ptr %i.cn, %10
  br i1 %.not350, label %bb.ai, label %.thread12

bb.ai:                                            ; preds = %bb.ah
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.kd, ptr %9, align 8, !tbaa !58
  %i.ke = load i8, ptr %i.cn, align 1, !tbaa !36  ; 2 uses
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 31                       ; 2 uses
  %i.kh = add nsw i32 %i.kg, -1                   ; 7 uses
  %i.ki = icmp ugt i8 %i.ke, 63
  %i.kj = icmp eq i32 %i.kg, 0
  %or.cond6 = or i1 %i.ki, %i.kj
  br i1 %or.cond6, label %.thread12, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kk = and i32 %i.kf, 32                       ; 8 uses
  %i.kl = sub nuw nsw i32 4, %.031838             ; 8 uses
  br i1 %i.t, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.km = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.kn = icmp eq ptr %i.km, null
  %i.ko = icmp ne i32 %i.kk, 0
  %or.cond8 = and i1 %i.ko, %i.kn
  %brmerge23 = or i1 %i.q, %or.cond8
  br i1 %brmerge23, label %.thread2, label %.lr.ph.i383.preheader

.lr.ph.i383.preheader:                            ; preds = %bb.ak
  %i.kp = shl nuw nsw i32 %i.kl, %5               ; 3 uses
  %i.kq = add nsw i32 %i.kp, -1
  %xtraiter104 = and i32 %i.kp, 7                 ; 3 uses
  %i.kr = icmp ult i32 %i.kq, 7
  br i1 %i.kr, label %.lr.ph.i383.epil.preheader, label %.lr.ph.i383.preheader.new

.lr.ph.i383.preheader.new:                        ; preds = %.lr.ph.i383.preheader
  %unroll_iter108 = and i32 %i.kp, 8
  br label %.lr.ph.i383

.lr.ph.i383:                                      ; preds = %.lr.ph.i383, %.lr.ph.i383.preheader.new
  %.0811.i385 = phi ptr [ %.029142, %.lr.ph.i383.preheader.new ], [ %i.lo, %.lr.ph.i383 ] ; 2 uses
  %.0910.i386 = phi ptr [ %.029341, %.lr.ph.i383.preheader.new ], [ %i.lp, %.lr.ph.i383 ] ; 2 uses
  %niter109 = phi i32 [ 0, %.lr.ph.i383.preheader.new ], [ %niter109.next.7, %.lr.ph.i383 ]
  %i.ks = load i32, ptr %.0910.i386, align 1, !tbaa !36
  store i32 %i.ks, ptr %.0811.i385, align 1, !tbaa !36
  %i.kt = getelementptr inbounds i8, ptr %.0811.i385, i64 %3 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %.0910.i386, i64 %3 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 1, !tbaa !36
  store i32 %i.kv, ptr %i.kt, align 1, !tbaa !36
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %3 ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %i.ku, i64 %3 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 1, !tbaa !36
  store i32 %i.ky, ptr %i.kw, align 1, !tbaa !36
  %i.kz = getelementptr inbounds i8, ptr %i.kw, i64 %3 ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.kx, i64 %3 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 1, !tbaa !36
  store i32 %i.lb, ptr %i.kz, align 1, !tbaa !36
  %i.lc = getelementptr inbounds i8, ptr %i.kz, i64 %3 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %3 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 1, !tbaa !36
  store i32 %i.le, ptr %i.lc, align 1, !tbaa !36
  %i.lf = getelementptr inbounds i8, ptr %i.lc, i64 %3 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.ld, i64 %3 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !36
  store i32 %i.lh, ptr %i.lf, align 1, !tbaa !36
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %3 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %i.lg, i64 %3 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 1, !tbaa !36
  store i32 %i.lk, ptr %i.li, align 1, !tbaa !36
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 %3 ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.lj, i64 %3 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 1, !tbaa !36
  store i32 %i.ln, ptr %i.ll, align 1, !tbaa !36
  %i.lo = getelementptr inbounds i8, ptr %i.ll, i64 %3 ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lm, i64 %3 ; 2 uses
  %niter109.next.7 = add i32 %niter109, 8         ; 2 uses
  %niter109.ncmp.7 = icmp eq i32 %niter109.next.7, %unroll_iter108
  br i1 %niter109.ncmp.7, label %.thread2.loopexit98.unr-lcssa, label %.lr.ph.i383, !llvm.loop !97

bb.al:                                            ; preds = %bb.aj
  br i1 %i.u, label %bb.am, label %.thread2

bb.am:                                            ; preds = %bb.al
  %i.lq = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not351 = icmp eq ptr %i.lq, null
  br i1 %.not351, label %bb.an, label %.thread2

bb.an:                                            ; preds = %bb.am
  %i.lr = load i64, ptr %.029341, align 1, !tbaa !36 ; 2 uses
  br i1 %spec.select.not, label %.lr.ph.i393.preheader, label %.lr.ph.i389

.lr.ph.i389:                                      ; preds = %bb.an
  %i.ls = and i64 %i.lr, 71777214294589695
  %i.lt = mul nuw i64 %i.ls, 257                  ; 7 uses
  %i.lu = getelementptr inbounds i8, ptr %.029142, i64 %3 ; 3 uses
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !36
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %3 ; 2 uses
  store i64 %i.lt, ptr %i.lv, align 8, !tbaa !36
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %3 ; 2 uses
  store i64 %i.lt, ptr %i.lw, align 8, !tbaa !36
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 %3 ; 2 uses
  store i64 %i.lt, ptr %i.lx, align 8, !tbaa !36
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %3 ; 2 uses
  store i64 %i.lt, ptr %i.ly, align 8, !tbaa !36
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %3 ; 2 uses
  store i64 %i.lt, ptr %i.lz, align 8, !tbaa !36
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %3
  store i64 %i.lt, ptr %i.ma, align 8, !tbaa !36
  %i.mb = load i64, ptr %.029341, align 1, !tbaa !36
  %i.mc = load i64, ptr %i.lu, align 8, !tbaa !36
  %i.md = add i64 %i.mc, %i.mb
  %i.me = lshr i64 %i.md, 1
  %i.mf = and i64 %i.me, 9187201950435737471
  store i64 %i.mf, ptr %.029142, align 8, !tbaa !36
  br label %.thread2

.lr.ph.i393.preheader:                            ; preds = %bb.an
  %i.mg = shl nuw nsw i32 %i.kl, 1
  br label %.lr.ph.i393

.lr.ph.i393:                                      ; preds = %.lr.ph.i393.preheader, %.lr.ph.i393
  %.07.i394 = phi ptr [ %i.mh, %.lr.ph.i393 ], [ %.029142, %.lr.ph.i393.preheader ] ; 2 uses
  %.056.i395 = phi i32 [ %i.mi, %.lr.ph.i393 ], [ %i.mg, %.lr.ph.i393.preheader ] ; 2 uses
  store i64 %i.lr, ptr %.07.i394, align 8, !tbaa !36
  %i.mh = getelementptr inbounds i8, ptr %.07.i394, i64 %3
  %i.mi = add nsw i32 %.056.i395, -1
  %i.mj = icmp samesign ugt i32 %.056.i395, 1
  br i1 %i.mj, label %.lr.ph.i393, label %.thread2, !llvm.loop !100

bb.ao:                                            ; preds = %bb.z
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.z
  %.4312 = phi i32 [ 1, %bb.ao ], [ %.231039, %bb.z ] ; 3 uses
  %.4302 = phi i32 [ 1, %bb.ao ], [ %.230040, %bb.z ] ; 3 uses
  br i1 %.not346, label %.thread12, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mk = load ptr, ptr %i.s, align 8, !tbaa !57
  %.not349 = icmp eq ptr %i.mk, null
  %brmerge = or i1 %i.q, %.not349
  br i1 %brmerge, label %.thread2, label %.lr.ph.i397.preheader

.lr.ph.i397.preheader:                            ; preds = %bb.aq
  br i1 %.not122.not, label %.lr.ph.i397.epil.preheader, label %.lr.ph.i397

.lr.ph.i397:                                      ; preds = %.lr.ph.i397.preheader, %.lr.ph.i397
  %.0811.i399 = phi ptr [ %i.nh, %.lr.ph.i397 ], [ %.029142, %.lr.ph.i397.preheader ] ; 2 uses
  %.0910.i400 = phi ptr [ %i.ni, %.lr.ph.i397 ], [ %.029341, %.lr.ph.i397.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph.i397 ], [ 0, %.lr.ph.i397.preheader ] ; 2 uses
  %i.ml = load i32, ptr %.0910.i400, align 1, !tbaa !36
  store i32 %i.ml, ptr %.0811.i399, align 1, !tbaa !36
  %i.mm = getelementptr inbounds i8, ptr %.0811.i399, i64 %3 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %.0910.i400, i64 %3 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 1, !tbaa !36
  store i32 %i.mo, ptr %i.mm, align 1, !tbaa !36
  %i.mp = getelementptr inbounds i8, ptr %i.mm, i64 %3 ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mn, i64 %3 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 1, !tbaa !36
  store i32 %i.mr, ptr %i.mp, align 1, !tbaa !36
  %i.ms = getelementptr inbounds i8, ptr %i.mp, i64 %3 ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 %3 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 1, !tbaa !36
  store i32 %i.mu, ptr %i.ms, align 1, !tbaa !36
  %i.mv = getelementptr inbounds i8, ptr %i.ms, i64 %3 ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %i.mt, i64 %3 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 1, !tbaa !36
  store i32 %i.mx, ptr %i.mv, align 1, !tbaa !36
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %3 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 %3 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 1, !tbaa !36
  store i32 %i.na, ptr %i.my, align 1, !tbaa !36
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 %3 ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %3 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 1, !tbaa !36
  store i32 %i.nd, ptr %i.nb, align 1, !tbaa !36
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %3 ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 %3 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 1, !tbaa !36
  store i32 %i.ng, ptr %i.ne, align 1, !tbaa !36
  %i.nh = getelementptr inbounds i8, ptr %i.ne, i64 %3
  %i.ni = getelementptr inbounds i8, ptr %i.nf, i64 %3
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp eq i32 %niter, 0
  br i1 %niter.ncmp.7, label %.thread2, label %.lr.ph.i397, !llvm.loop !97

.thread2.loopexit96.unr-lcssa:                    ; preds = %.lr.ph.i369
  %lcmp.mod112.not = icmp eq i32 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %.thread2, label %.lr.ph.i369.epil.preheader

.lr.ph.i369.epil.preheader:                       ; preds = %.thread2.loopexit96.unr-lcssa, %.lr.ph.i369.preheader
  %.0811.i371.epil.init = phi ptr [ %.029142, %.lr.ph.i369.preheader ], [ %i.jk, %.thread2.loopexit96.unr-lcssa ]
  %.0910.i372.epil.init = phi ptr [ %.029341, %.lr.ph.i369.preheader ], [ %i.jl, %.thread2.loopexit96.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter110, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i369.epil

.lr.ph.i369.epil:                                 ; preds = %.lr.ph.i369.epil, %.lr.ph.i369.epil.preheader
  %.0811.i371.epil = phi ptr [ %i.nk, %.lr.ph.i369.epil ], [ %.0811.i371.epil.init, %.lr.ph.i369.epil.preheader ] ; 2 uses
  %.0910.i372.epil = phi ptr [ %i.nl, %.lr.ph.i369.epil ], [ %.0910.i372.epil.init, %.lr.ph.i369.epil.preheader ] ; 2 uses
  %epil.iter111 = phi i32 [ %epil.iter111.next, %.lr.ph.i369.epil ], [ 0, %.lr.ph.i369.epil.preheader ]
  %i.nj = load i32, ptr %.0910.i372.epil, align 1, !tbaa !36
  store i32 %i.nj, ptr %.0811.i371.epil, align 1, !tbaa !36
  %i.nk = getelementptr inbounds i8, ptr %.0811.i371.epil, i64 %3
  %i.nl = getelementptr inbounds i8, ptr %.0910.i372.epil, i64 %3
  %epil.iter111.next = add i32 %epil.iter111, 1   ; 2 uses
  %epil.iter111.cmp.not = icmp eq i32 %epil.iter111.next, %xtraiter110
  br i1 %epil.iter111.cmp.not, label %.thread2, label %.lr.ph.i369.epil, !llvm.loop !101

.thread2.loopexit98.unr-lcssa:                    ; preds = %.lr.ph.i383
  %lcmp.mod106.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %.thread2, label %.lr.ph.i383.epil.preheader

.lr.ph.i383.epil.preheader:                       ; preds = %.thread2.loopexit98.unr-lcssa, %.lr.ph.i383.preheader
  %.0811.i385.epil.init = phi ptr [ %.029142, %.lr.ph.i383.preheader ], [ %i.lo, %.thread2.loopexit98.unr-lcssa ]
  %.0910.i386.epil.init = phi ptr [ %.029341, %.lr.ph.i383.preheader ], [ %i.lp, %.thread2.loopexit98.unr-lcssa ]
  %lcmp.mod107 = icmp ne i32 %xtraiter104, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.i383.epil

.lr.ph.i383.epil:                                 ; preds = %.lr.ph.i383.epil, %.lr.ph.i383.epil.preheader
  %.0811.i385.epil = phi ptr [ %i.nn, %.lr.ph.i383.epil ], [ %.0811.i385.epil.init, %.lr.ph.i383.epil.preheader ] ; 2 uses
  %.0910.i386.epil = phi ptr [ %i.no, %.lr.ph.i383.epil ], [ %.0910.i386.epil.init, %.lr.ph.i383.epil.preheader ] ; 2 uses
  %epil.iter105 = phi i32 [ %epil.iter105.next, %.lr.ph.i383.epil ], [ 0, %.lr.ph.i383.epil.preheader ]
  %i.nm = load i32, ptr %.0910.i386.epil, align 1, !tbaa !36
  store i32 %i.nm, ptr %.0811.i385.epil, align 1, !tbaa !36
  %i.nn = getelementptr inbounds i8, ptr %.0811.i385.epil, i64 %3
  %i.no = getelementptr inbounds i8, ptr %.0910.i386.epil, i64 %3
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %.thread2, label %.lr.ph.i383.epil, !llvm.loop !102

.lr.ph.i397.epil.preheader:                       ; preds = %.lr.ph.i397.preheader
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.lr.ph.i397.epil

.lr.ph.i397.epil:                                 ; preds = %.lr.ph.i397.epil, %.lr.ph.i397.epil.preheader
  %.0811.i399.epil = phi ptr [ %i.nq, %.lr.ph.i397.epil ], [ %.029142, %.lr.ph.i397.epil.preheader ] ; 2 uses
  %.0910.i400.epil = phi ptr [ %i.nr, %.lr.ph.i397.epil ], [ %.029341, %.lr.ph.i397.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i397.epil ], [ 0, %.lr.ph.i397.epil.preheader ]
  %i.np = load i32, ptr %.0910.i400.epil, align 1, !tbaa !36
  store i32 %i.np, ptr %.0811.i399.epil, align 1, !tbaa !36
  %i.nq = getelementptr inbounds i8, ptr %.0811.i399.epil, i64 %3
  %i.nr = getelementptr inbounds i8, ptr %.0910.i400.epil, i64 %3
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %.thread2, label %.lr.ph.i397.epil, !llvm.loop !103

.thread2:                                         ; preds = %.lr.ph.i397, %.lr.ph.i397.epil, %.thread2.loopexit98.unr-lcssa, %.lr.ph.i383.epil, %.lr.ph.i393, %.thread2.loopexit96.unr-lcssa, %.lr.ph.i369.epil, %.lr.ph.i379, %bb.ak, %bb.x, %bb.w, %.critedge, %bb.y, %bb.m, %bb.q, %bb.p, %bb.al, %bb.am, %.lr.ph.i389, %fill_64.exit378, %bb.ae, %bb.ad, %bb.aq
  %.0317 = phi i32 [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.y ], [ 1, %.critedge ], [ 1, %bb.x ], [ 1, %bb.w ], [ 4, %bb.aq ], [ %i.ik, %bb.ae ], [ %i.ik, %fill_64.exit378 ], [ %i.kl, %.thread2.loopexit98.unr-lcssa ], [ %i.ik, %bb.ad ], [ %i.ik, %.thread2.loopexit96.unr-lcssa ], [ %i.kl, %bb.am ], [ 4, %.lr.ph.i389 ], [ %i.kl, %.lr.ph.i393 ], [ %i.kl, %bb.al ], [ %i.kl, %bb.ak ], [ %i.ik, %.lr.ph.i379 ], [ %i.ik, %.lr.ph.i369.epil ], [ %i.kl, %.lr.ph.i383.epil ], [ 4, %.lr.ph.i397.epil ], [ 4, %.lr.ph.i397 ] ; 2 uses
  %.5313 = phi i32 [ %.231039, %bb.q ], [ %.231039, %bb.p ], [ %.231039, %bb.m ], [ %.231039, %bb.y ], [ %.231039, %.critedge ], [ %.231039, %bb.x ], [ %.231039, %bb.w ], [ %.4312, %bb.aq ], [ %.3311, %bb.ae ], [ %.3311, %fill_64.exit378 ], [ %i.kh, %.thread2.loopexit98.unr-lcssa ], [ %.3311, %bb.ad ], [ %.3311, %.thread2.loopexit96.unr-lcssa ], [ %i.kh, %bb.am ], [ %i.kh, %.lr.ph.i389 ], [ %i.kh, %.lr.ph.i393 ], [ %i.kh, %bb.al ], [ %i.kh, %bb.ak ], [ %.3311, %.lr.ph.i379 ], [ %.3311, %.lr.ph.i369.epil ], [ %i.kh, %.lr.ph.i383.epil ], [ %.4312, %.lr.ph.i397.epil ], [ %.4312, %.lr.ph.i397 ] ; 2 uses
  %.5303 = phi i32 [ %.230040, %bb.q ], [ %.230040, %bb.p ], [ %.230040, %bb.m ], [ %.230040, %bb.y ], [ %.230040, %.critedge ], [ %.230040, %bb.x ], [ %.230040, %bb.w ], [ %.4302, %bb.aq ], [ %.3301, %bb.ae ], [ %.3301, %fill_64.exit378 ], [ %i.kk, %.thread2.loopexit98.unr-lcssa ], [ %.3301, %bb.ad ], [ %.3301, %.thread2.loopexit96.unr-lcssa ], [ %i.kk, %bb.am ], [ %i.kk, %.lr.ph.i389 ], [ %i.kk, %.lr.ph.i393 ], [ %i.kk, %bb.al ], [ %i.kk, %bb.ak ], [ %.3301, %.lr.ph.i379 ], [ %.3301, %.lr.ph.i369.epil ], [ %i.kk, %.lr.ph.i383.epil ], [ %.4302, %.lr.ph.i397.epil ], [ %.4302, %.lr.ph.i397 ] ; 2 uses
  %i.ns = add nuw nsw i32 %.0317, %.031838        ; 2 uses
  %i.nt = shl nuw nsw i32 %.0317, %5
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = mul nsw i64 %3, %i.nu                   ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %.029341, i64 %i.nv
  %i.nx = getelementptr inbounds i8, ptr %.029142, i64 %i.nv
  %i.ny = icmp slt i32 %i.ns, 4
  br i1 %i.ny, label %.preheader, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %.thread2, %copy_block4.exit
  %.7315 = phi i32 [ %i.ci, %copy_block4.exit ], [ %.5313, %.thread2 ] ; 2 uses
  %.7 = phi i32 [ %.129950, %copy_block4.exit ], [ %.5303, %.thread2 ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.132346, i64 %i.z ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.132644, i64 %i.z ; 2 uses
  %i.ob = add nuw nsw i32 %i.aa, %.032148         ; 2 uses
  %i.oc = load i16, ptr %i.d, align 4, !tbaa !65  ; 2 uses
  %i.od = sext i16 %i.oc to i32
  %i.oe = icmp slt i32 %i.ob, %i.od
  br i1 %i.oe, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i16, ptr %i.k, align 2, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader29
  %i.of = phi i16 [ %i.ad, %.preheader29 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.og = phi i16 [ %i.ae, %.preheader29 ], [ %i.oc, %._crit_edge.loopexit ]
  %.1326.lcssa = phi ptr [ %.032554, %.preheader29 ], [ %i.oa, %._crit_edge.loopexit ]
  %.1323.lcssa = phi ptr [ %.032255, %.preheader29 ], [ %i.nz, %._crit_edge.loopexit ]
  %.1309.lcssa = phi i32 [ %.030857, %.preheader29 ], [ %.7315, %._crit_edge.loopexit ]
  %.1299.lcssa = phi i32 [ %.029858, %.preheader29 ], [ %.7, %._crit_edge.loopexit ]
  %i.oh = getelementptr inbounds i8, ptr %.1326.lcssa, i64 %i.i
  %i.oi = getelementptr inbounds i8, ptr %.1323.lcssa, i64 %i.i
  %i.oj = add nuw nsw i32 %i.ab, %.032056         ; 2 uses
  %i.ok = sext i16 %i.of to i32
  %i.ol = icmp slt i32 %i.oj, %i.ok
  br i1 %i.ol, label %.preheader29, label %.thread12, !llvm.loop !106

.thread12:                                        ; preds = %._crit_edge, %bb.z, %bb.ah, %bb.ab, %bb.j, %bb.ap, %bb.i, %bb.ai, %.preheader, %.preheader30, %bb.a
  %.6 = phi i32 [ 2, %bb.a ], [ 5, %.preheader ], [ 0, %.preheader30 ], [ 3, %bb.ai ], [ 5, %bb.i ], [ 1, %bb.ap ], [ 2, %bb.j ], [ 1, %bb.ab ], [ 5, %bb.ah ], [ 4, %bb.z ], [ 0, %._crit_edge ]
  ret i32 %.6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!31 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"short", !5, i64 0}
!33 = !{!"Indeo3DecodeContext", !29, i64 0, !30, i64 8, !31, i64 392, !6, i64 416, !6, i64 420, !14, i64 424, !14, i64 432, !14, i64 440, !6, i64 448, !32, i64 452, !32, i64 454, !6, i64 456, !6, i64 460, !32, i64 464, !5, i64 466, !5, i64 467, !14, i64 472, !14, i64 480, !14, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !14, i64 512, !5, i64 520}
!34 = !{!33, !29, i64 0}
!35 = !{!27, !6, i64 116}
!36 = !{!5, !5, i64 0}
!37 = !{!33, !5, i64 466}
!38 = !{!33, !32, i64 452}
!39 = !{!33, !32, i64 454}
!40 = !{!33, !14, i64 512}
!41 = !{!6, !6, i64 0}
!42 = !{!33, !5, i64 467}
!43 = !{!33, !6, i64 448}
!44 = !{!33, !14, i64 440}
!45 = !{!31, !14, i64 0}
!46 = !{!31, !6, i64 12}
!47 = !{!31, !6, i64 16}
!48 = !{!31, !6, i64 8}
!49 = !{!33, !6, i64 420}
!50 = !{!33, !6, i64 416}
!51 = !{!33, !14, i64 432}
!52 = !{!"Cell", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6, !5, i64 8, !14, i64 16}
!53 = !{!52, !32, i64 2}
!54 = !{!52, !32, i64 0}
!55 = !{!32, !32, i64 0}
!56 = !{!52, !5, i64 8}
!57 = !{!52, !14, i64 16}
!58 = !{!14, !14, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"Plane", !5, i64 0, !5, i64 16, !6, i64 32, !6, i64 36, !13, i64 40}
!61 = !{!60, !13, i64 40}
!62 = !{!60, !6, i64 32}
!63 = !{!60, !6, i64 36}
!64 = !{!52, !32, i64 6}
!65 = !{!52, !32, i64 4}
!66 = !{!"p1 _ZTS7vqEntry", !9, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!27, !6, i64 136}
!69 = !{!27, !6, i64 64}
!70 = !{!27, !6, i64 112}
!71 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!72 = !{!71, !14, i64 24}
!73 = !{!71, !6, i64 32}
!74 = !{!33, !6, i64 456}
!75 = !{!33, !32, i64 464}
!76 = !{!33, !6, i64 460}
!77 = !{!33, !6, i64 496}
!78 = !{!33, !6, i64 500}
!79 = !{!33, !6, i64 504}
!80 = !{!33, !14, i64 472}
!81 = !{!33, !14, i64 480}
!82 = !{!33, !14, i64 488}
!83 = !{!27, !6, i64 704}
!84 = distinct !{!84, !59}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = distinct !{!89, !59}
!90 = distinct !{!90, !59}
!91 = distinct !{!91, !59}
!92 = !{i64 0, i64 2, !55, i64 2, i64 2, !55, i64 4, i64 2, !55, i64 6, i64 2, !55, i64 8, i64 1, !36, i64 16, i64 8, !58}
!93 = !{!33, !14, i64 424}
!94 = distinct !{!94, !59}
!95 = !{!9, !9, i64 0}
!96 = distinct !{!96, !59}
!97 = distinct !{!97, !59}
!98 = distinct !{!98, !107}
!99 = distinct !{!99, !107}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !107}
!102 = distinct !{!102, !107}
!103 = distinct !{!103, !107}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!"vqEntry", !17, i64 0, !24, i64 8, !5, i64 16, !5, i64 17}
!109 = !{!108, !5, i64 16}
!110 = !{!108, !5, i64 17}
!111 = !{!108, !17, i64 0}
!112 = !{!108, !24, i64 8}
end_hunk_0
