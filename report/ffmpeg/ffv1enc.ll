Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  %i.iz = insertelement <4 x i32> %i.iy, i32 %i.iv, i64 2
  %i.ja = insertelement <4 x i32> %i.iz, i32 %i.iw, i64 3
  %i.jb = ashr <4 x i32> %i.ja, splat (i32 2)
  %i.jc = insertelement <4 x i32> poison, i32 %i.hi, i64 0
  %i.jd = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.je = add nsw <4 x i32> %i.jb, %i.jd
  %i.jf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.je, i1 true)
  %i.jg = add nsw <4 x i32> %i.jf, %i.fb          ; 2 uses
  %i.jh = add nsw i32 %i.ia, %i.hq
  %i.ji = ashr i32 %i.jh, 2
  %i.jj = add nsw i32 %i.ji, %i.hi
  %i.jk = tail call i32 @llvm.abs.i32(i32 %i.jj, i1 true)
  %i.jl = add nsw i32 %i.jk, %i.ew                ; 2 uses
  %i.jm = add nsw i32 %i.hz, %i.hr
  %i.jn = ashr i32 %i.jm, 2
  %i.jo = add nsw i32 %i.jn, %i.hi
  %i.jp = tail call i32 @llvm.abs.i32(i32 %i.jo, i1 true)
  %i.jq = add nsw i32 %i.jp, %i.ei                ; 2 uses
  %i.jr = ashr i32 %i.hr, 2
  %i.js = add nsw i32 %i.jr, %i.hi
  %i.jt = tail call i32 @llvm.abs.i32(i32 %i.js, i1 true)
  %i.ju = add nsw i32 %i.jt, %i.eh                ; 2 uses
  %i.jv = ashr i32 %i.hq, 2
  %i.jw = add nsw i32 %i.jv, %i.hi
  %i.jx = tail call i32 @llvm.abs.i32(i32 %i.jw, i1 true)
  %i.jy = add nsw i32 %i.jx, %i.eg                ; 2 uses
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.loopexit.us.loopexit.i, %bb.o
  %i.jz = phi i32 [ %i.jy, %.loopexit.us.loopexit.i ], [ %i.eg, %bb.o ] ; 3 uses
  %i.ka = phi i32 [ %i.ju, %.loopexit.us.loopexit.i ], [ %i.eh, %bb.o ] ; 3 uses
  %i.kb = phi i32 [ %i.jq, %.loopexit.us.loopexit.i ], [ %i.ei, %bb.o ] ; 3 uses
  %i.kc = phi i32 [ %i.jl, %.loopexit.us.loopexit.i ], [ %i.ej, %bb.o ] ; 3 uses
  %i.kd = phi i32 [ %i.is, %.loopexit.us.loopexit.i ], [ %i.ek, %bb.o ] ; 3 uses
  %i.ke = phi i32 [ %i.iq, %.loopexit.us.loopexit.i ], [ %i.el, %bb.o ] ; 3 uses
  %i.kf = phi i32 [ %i.in, %.loopexit.us.loopexit.i ], [ %i.em, %bb.o ] ; 3 uses
  %i.kg = phi i32 [ %i.ij, %.loopexit.us.loopexit.i ], [ %i.en, %bb.o ] ; 3 uses
  %i.kh = phi i32 [ %i.if, %.loopexit.us.loopexit.i ], [ %i.eo, %bb.o ] ; 3 uses
  %i.ki = phi i32 [ %i.hy, %.loopexit.us.loopexit.i ], [ %i.ep, %bb.o ] ; 3 uses
  %i.kj = phi i32 [ %i.ht, %.loopexit.us.loopexit.i ], [ %i.eq, %bb.o ] ; 4 uses
  %i.kk = phi i32 [ %i.jy, %.loopexit.us.loopexit.i ], [ %i.er, %bb.o ] ; 3 uses
  %i.kl = phi i32 [ %i.ju, %.loopexit.us.loopexit.i ], [ %i.es, %bb.o ] ; 3 uses
  %i.km = phi i32 [ %i.jq, %.loopexit.us.loopexit.i ], [ %i.et, %bb.o ] ; 3 uses
  %i.kn = phi i32 [ %i.if, %.loopexit.us.loopexit.i ], [ %i.eu, %bb.o ] ; 3 uses
  %i.ko = phi i32 [ %i.hy, %.loopexit.us.loopexit.i ], [ %i.ev, %bb.o ] ; 3 uses
  %i.kp = phi i32 [ %i.jl, %.loopexit.us.loopexit.i ], [ %i.ew, %bb.o ] ; 3 uses
  %i.kq = phi i32 [ %i.is, %.loopexit.us.loopexit.i ], [ %i.ex, %bb.o ] ; 3 uses
  %i.kr = phi i32 [ %i.iq, %.loopexit.us.loopexit.i ], [ %i.ey, %bb.o ] ; 3 uses
  %i.ks = phi i32 [ %i.in, %.loopexit.us.loopexit.i ], [ %i.ez, %bb.o ] ; 3 uses
  %i.kt = phi i32 [ %i.ij, %.loopexit.us.loopexit.i ], [ %i.fa, %bb.o ] ; 3 uses
  %i.ku = phi <4 x i32> [ %i.jg, %.loopexit.us.loopexit.i ], [ %i.fc, %bb.o ] ; 3 uses
  %i.kv = phi <4 x i32> [ %i.jg, %.loopexit.us.loopexit.i ], [ %i.fb, %bb.o ] ; 6 uses
  %i.kw = trunc i32 %i.hc to i16
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv.i
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !79
  %i.ky = trunc i32 %i.hd to i16
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.i
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !79
  %i.la = trunc i32 %i.hb to i16
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !79
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next.i, %i.de
  br i1 %exitcond150.not.i, label %._crit_edge.us.i, label %bb.j, !llvm.loop !225

._crit_edge.us.i:                                 ; preds = %.loopexit.us.i
  %i.lc = add nuw nsw i32 %.0115140.us.i, 1       ; 2 uses
  %exitcond151.not.i = icmp eq i32 %i.lc, %i.x
  br i1 %exitcond151.not.i, label %.preheader.loopexit.i, label %.preheader133.us.i, !llvm.loop !226

.preheader.loopexit.i:                            ; preds = %._crit_edge.us.i
  store i32 %i.kj, ptr %i.q, align 16
  store i32 %i.ki, ptr %i.di, align 4
  store i32 %i.kh, ptr %i.dj, align 8
  store i32 %i.kg, ptr %i.dk, align 4
  store i32 %i.kf, ptr %i.dl, align 16
  store i32 %i.ke, ptr %i.dm, align 4
  store i32 %i.kd, ptr %i.dn, align 8
  store <4 x i32> %i.ku, ptr %i.do, align 4
  store i32 %i.kc, ptr %i.dp, align 4
  store i32 %i.kb, ptr %i.dq, align 16
  store i32 %i.ka, ptr %i.dr, align 4
  store i32 %i.jz, ptr %i.ds, align 8
  %i.ld = icmp slt i32 %i.ko, %i.kj               ; 2 uses
  %i.le = zext i1 %i.ld to i32
  %.phi.trans.insert1306.sroa.sel.idx = select i1 %i.ld, i64 4, i64 0
  %.phi.trans.insert1306.sroa.sel = getelementptr inbounds nuw i8, ptr %i.q, i64 %.phi.trans.insert1306.sroa.sel.idx
  %.pre1308 = load i32, ptr %.phi.trans.insert1306.sroa.sel, align 4, !tbaa !72
  %i.lf = icmp slt i32 %i.kn, %.pre1308
  %i.lg = select i1 %i.lf, i32 2, i32 %i.le
  %i.lh = extractelement <4 x i32> %i.kv, i64 0
  %i.li = extractelement <4 x i32> %i.kv, i64 1
  %i.lj = extractelement <4 x i32> %i.kv, i64 2
  %i.lk = extractelement <4 x i32> %i.kv, i64 3
  br label %choose_rct_params.exit

choose_rct_params.exit:                           ; preds = %.preheader133.lr.ph.i, %bb.i, %.preheader.loopexit.i
  %i.ll = phi i32 [ 0, %bb.i ], [ %i.kk, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lm = phi i32 [ 0, %bb.i ], [ %i.kl, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.ln = phi i32 [ 0, %bb.i ], [ %i.km, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lo = phi i32 [ 0, %bb.i ], [ %i.kp, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lp = phi i32 [ 0, %bb.i ], [ %i.lk, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lq = phi i32 [ 0, %bb.i ], [ %i.lj, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lr = phi i32 [ 0, %bb.i ], [ %i.li, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.ls = phi i32 [ 0, %bb.i ], [ %i.lh, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lt = phi i32 [ 0, %bb.i ], [ %i.kq, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lu = phi i32 [ 0, %bb.i ], [ %i.kr, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lv = phi i32 [ 0, %bb.i ], [ %i.ks, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lw = phi i32 [ 0, %bb.i ], [ %i.kt, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %spec.select.1.i = phi i32 [ 0, %bb.i ], [ %i.lg, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ] ; 2 uses
  %i.lx = zext nneg i32 %spec.select.1.i to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !72
  %i.ma = icmp slt i32 %i.lw, %i.lz
  %spec.select.2.i = select i1 %i.ma, i32 3, i32 %spec.select.1.i ; 2 uses
  %i.mb = zext nneg i32 %spec.select.2.i to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !72
  %i.me = icmp slt i32 %i.lv, %i.md
  %spec.select.3.i = select i1 %i.me, i32 4, i32 %spec.select.2.i ; 2 uses
  %i.mf = zext nneg i32 %spec.select.3.i to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !72
  %i.mi = icmp slt i32 %i.lu, %i.mh
  %spec.select.4.i = select i1 %i.mi, i32 5, i32 %spec.select.3.i ; 2 uses
  %i.mj = zext nneg i32 %spec.select.4.i to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !72
  %i.mm = icmp slt i32 %i.lt, %i.ml
  %spec.select.5.i = select i1 %i.mm, i32 6, i32 %spec.select.4.i ; 2 uses
  %i.mn = zext nneg i32 %spec.select.5.i to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !72
  %i.mq = icmp slt i32 %i.ls, %i.mp
  %spec.select.6.i = select i1 %i.mq, i32 7, i32 %spec.select.5.i ; 2 uses
  %i.mr = zext nneg i32 %spec.select.6.i to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !72
  %i.mu = icmp slt i32 %i.lr, %i.mt
  %spec.select.7.i = select i1 %i.mu, i32 8, i32 %spec.select.6.i ; 2 uses
  %i.mv = zext nneg i32 %spec.select.7.i to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !72
  %i.my = icmp slt i32 %i.lq, %i.mx
  %spec.select.8.i = select i1 %i.my, i32 9, i32 %spec.select.7.i ; 2 uses
  %i.mz = zext nneg i32 %spec.select.8.i to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !72
  %i.nc = icmp slt i32 %i.lp, %i.nb
  %spec.select.9.i = select i1 %i.nc, i32 10, i32 %spec.select.8.i ; 2 uses
  %i.nd = zext nneg i32 %spec.select.9.i to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !72
  %i.ng = icmp slt i32 %i.lo, %i.nf
  %spec.select.10.i = select i1 %i.ng, i32 11, i32 %spec.select.9.i ; 2 uses
  %i.nh = zext nneg i32 %spec.select.10.i to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !72
  %i.nk = icmp slt i32 %i.ln, %i.nj
  %spec.select.11.i = select i1 %i.nk, i32 12, i32 %spec.select.10.i ; 2 uses
  %i.nl = zext nneg i32 %spec.select.11.i to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !72
  %i.no = icmp slt i32 %i.lm, %i.nn
  %spec.select.12.i = select i1 %i.no, i32 13, i32 %spec.select.11.i ; 2 uses
  %i.np = zext nneg i32 %spec.select.12.i to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !72
  %i.ns = icmp slt i32 %i.ll, %i.nr
  %spec.select.13.i = select i1 %i.ns, i32 14, i32 %spec.select.12.i
  %i.nt = zext nneg i32 %spec.select.13.i to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @choose_rct_params_bayer.rct_y_coeff, i64 %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nw = load <2 x i32>, ptr %i.nu, align 8, !tbaa !72
  %i.nx = shufflevector <2 x i32> %i.nw, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.nx, ptr %i.nv, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.s

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.ny = getelementptr inbounds nuw i8, ptr %i.t, i64 25168
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !80
  %.not309 = icmp eq i32 %i.nz, 0
  br i1 %.not309, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.p, i8 0, i64 60, i1 false)
  %i.oa = ashr i32 %i.v, 1                        ; 6 uses
  %i.ob = load ptr, ptr %1, align 8, !tbaa !125   ; 18 uses
  %i.oc = sext i32 %i.oa to i64                   ; 4 uses
  %i.od = getelementptr [2 x i8], ptr %i.ob, i64 %i.oc ; 10 uses
  %.idx.i330 = shl nsw i64 %i.oc, 2               ; 4 uses
  %i.oe = getelementptr i8, ptr %i.ob, i64 %.idx.i330 ; 10 uses
  %i.of = icmp sgt i32 %i.x, 0
  %i.og = icmp sgt i32 %i.oa, 0
  %or.cond.i = and i1 %i.of, %i.og
  br i1 %or.cond.i, label %.preheader5.lr.ph.split.i, label %choose_rct_params_bayer.exit

.preheader5.lr.ph.split.i:                        ; preds = %bb.q
  %i.oh = load i32, ptr %i.ay, align 8, !tbaa !72 ; 4 uses
  %i.oi = sext i32 %i.oh to i64                   ; 8 uses
  %i.oj = zext nneg i32 %i.x to i64               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.oa to i64 ; 10 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.on = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.op = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.or = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.ot = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ou = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.ov = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ow = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.ox = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %exitcond.not.i349.peel = icmp eq i32 %i.oa, 1
  %i.oy = shl nuw nsw i64 %wide.trip.count.i, 1   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ob, i64 %i.oy
  %i.oz = add nuw nsw i64 %i.oc, %wide.trip.count.i
  %i.pa = shl nuw nsw i64 %i.oz, 1
  %scevgep2039 = getelementptr i8, ptr %i.ob, i64 %i.pa ; 4 uses
  %i.pb = getelementptr i8, ptr %i.ob, i64 %.idx.i330
  %scevgep2040 = getelementptr i8, ptr %i.pb, i64 %i.oy ; 4 uses
  %i.pc = getelementptr i8, ptr %i.au, i64 %i.oi
  %i.pd = getelementptr i8, ptr %i.pc, i64 %i.aw
  %scevgep2041 = getelementptr i8, ptr %i.pd, i64 %i.bb ; 3 uses
  %i.pe = add nsw i64 %i.oj, -1                   ; 2 uses
  %i.pf = or i64 %i.pe, 1
  %i.pg = mul nsw i64 %i.pf, %i.oi
  %i.ph = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.au, i64 %i.pg
  %i.pj = getelementptr i8, ptr %i.pi, i64 %i.ph
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.aw
  %scevgep2042 = getelementptr i8, ptr %i.pk, i64 %i.bb ; 3 uses
  %i.pl = lshr i64 %i.pe, 1
  %i.pm = mul i64 %i.pl, %i.oi
  %i.pn = shl i64 %i.pm, 1
  %i.po = getelementptr i8, ptr %i.au, i64 %i.pn
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.ph
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.aw
  %scevgep2043 = getelementptr i8, ptr %i.pq, i64 %i.bb ; 3 uses
  %scevgep2091.a = getelementptr i8, ptr %i.ob, i64 2 ; 9 uses
  %i.pr = shl nuw nsw i64 %wide.trip.count.i, 1   ; 3 uses
  %scevgep2092.a = getelementptr i8, ptr %i.ob, i64 %i.pr ; 9 uses
  %i.ps = shl nuw nsw i64 %i.oc, 1                ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ob, i64 %i.ps
  %scevgep2093.a = getelementptr i8, ptr %i.pt, i64 2 ; 9 uses
  %i.pu = getelementptr i8, ptr %i.ob, i64 %i.ps
  %scevgep2094.a = getelementptr i8, ptr %i.pu, i64 %i.pr ; 9 uses
  %i.pv = getelementptr i8, ptr %i.ob, i64 %.idx.i330
  %scevgep2095.a = getelementptr i8, ptr %i.pv, i64 2 ; 9 uses
  %i.pw = getelementptr i8, ptr %i.ob, i64 %.idx.i330
  %scevgep2096 = getelementptr i8, ptr %i.pw, i64 %i.pr ; 9 uses
  %i.px = getelementptr i8, ptr %i.au, i64 %i.oi
  %i.py = getelementptr i8, ptr %i.px, i64 %i.aw
  %i.pz = getelementptr i8, ptr %i.py, i64 %i.bb
  %scevgep2097 = getelementptr i8, ptr %i.pz, i64 4 ; 3 uses
  %i.qa = add nsw i64 %i.oj, -1                   ; 2 uses
  %i.qb = or i64 %i.qa, 1
  %i.qc = mul nsw i64 %i.qb, %i.oi
  %i.qd = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.qe = getelementptr i8, ptr %i.au, i64 %i.qc
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.qd
  %i.qg = getelementptr i8, ptr %i.qf, i64 %i.aw
  %scevgep2098 = getelementptr i8, ptr %i.qg, i64 %i.bb ; 3 uses
  %i.qh = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.bb
  %scevgep2099 = getelementptr i8, ptr %i.qi, i64 4 ; 3 uses
  %i.qj = lshr i64 %i.qa, 1
  %i.qk = mul i64 %i.qj, %i.oi
  %i.ql = shl i64 %i.qk, 1
  %i.qm = getelementptr i8, ptr %i.au, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 %i.qd
  %i.qo = getelementptr i8, ptr %i.qn, i64 %i.aw
  %scevgep2100 = getelementptr i8, ptr %i.qo, i64 %i.bb ; 3 uses
  %i.qp = insertelement <4 x ptr> poison, ptr %i.ob, i64 0
  %i.qq = shufflevector <4 x ptr> %i.qp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qr = insertelement <4 x ptr> poison, ptr %scevgep2039, i64 0
  %i.qs = insertelement <4 x ptr> %i.qr, ptr %scevgep2040, i64 1
  %i.qt = insertelement <4 x ptr> %i.qs, ptr %scevgep2042, i64 2
  %i.qu = insertelement <4 x ptr> %i.qt, ptr %scevgep2043, i64 3
  %i.qv = insertelement <4 x ptr> poison, ptr %i.od, i64 0
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %i.oe, i64 1
  %i.qx = insertelement <4 x ptr> %i.qw, ptr %scevgep2041, i64 2
  %i.qy = insertelement <4 x ptr> %i.qx, ptr %i.bc, i64 3
  %i.qz = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ra = shufflevector <4 x ptr> %i.qz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rb = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check2176 = icmp ult i32 %i.oa, 9
  %bound02101 = icmp ult ptr %scevgep2091.a, %scevgep2094.a
  %bound12102 = icmp ult ptr %scevgep2093.a, %scevgep2092.a
  %found.conflict2103 = and i1 %bound02101, %bound12102
  %bound02104 = icmp ult ptr %scevgep2091.a, %scevgep2096
  %bound12105 = icmp ult ptr %scevgep2095.a, %scevgep2092.a
  %found.conflict2106 = and i1 %bound02104, %bound12105
  %conflict.rdx2107.a = or i1 %found.conflict2103, %found.conflict2106
  %bound02108.a = icmp ult ptr %scevgep2091.a, %scevgep2098
  %bound12109.a = icmp ult ptr %scevgep2097, %scevgep2092.a
  %found.conflict2110.a = and i1 %bound02108.a, %bound12109.a
  %stride.check2111 = icmp slt i32 %i.oh, 0
  %i.rc = or i1 %found.conflict2110.a, %stride.check2111
  %conflict.rdx2112 = or i1 %conflict.rdx2107.a, %i.rc
  %bound02113 = icmp ult ptr %scevgep2091.a, %scevgep2100
  %bound12114 = icmp ult ptr %scevgep2099, %scevgep2092.a
  %found.conflict2115 = and i1 %bound02113, %bound12114
  %conflict.rdx2117 = or i1 %found.conflict2115, %conflict.rdx2112
  %bound02118 = icmp ult ptr %scevgep2091.a, %scevgep2092.a
  %conflict.rdx2120 = or i1 %conflict.rdx2117, %bound02118
  %bound02121 = icmp ult ptr %scevgep2091.a, %scevgep2094.a
  %bound12122 = icmp ult ptr %scevgep2093.a, %scevgep2092.a
  %found.conflict2123 = and i1 %bound02121, %bound12122
  %conflict.rdx2124 = or i1 %conflict.rdx2120, %found.conflict2123
  %bound02125 = icmp ult ptr %scevgep2091.a, %scevgep2096
  %bound12126 = icmp ult ptr %scevgep2095.a, %scevgep2092.a
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %conflict.rdx2124, %found.conflict2127
  %bound02129 = icmp ult ptr %scevgep2093.a, %scevgep2096
  %bound12130 = icmp ult ptr %scevgep2095.a, %scevgep2094.a
  %found.conflict2131 = and i1 %bound02129, %bound12130
  %conflict.rdx2132 = or i1 %conflict.rdx2128, %found.conflict2131
  %bound02133 = icmp ult ptr %scevgep2093.a, %scevgep2098
  %bound12134 = icmp ult ptr %scevgep2097, %scevgep2094.a
  %found.conflict2135 = and i1 %bound02133, %bound12134
  %conflict.rdx2137 = or i1 %found.conflict2135, %conflict.rdx2132
  %bound02138 = icmp ult ptr %scevgep2093.a, %scevgep2100
  %bound12139 = icmp ult ptr %scevgep2099, %scevgep2094.a
  %found.conflict2140 = and i1 %bound02138, %bound12139
  %conflict.rdx2142 = or i1 %found.conflict2140, %conflict.rdx2137
  %bound02143 = icmp ult ptr %scevgep2093.a, %scevgep2092.a
  %bound12144 = icmp ult ptr %scevgep2091.a, %scevgep2094.a
  %found.conflict2145 = and i1 %bound02143, %bound12144
  %conflict.rdx2146 = or i1 %conflict.rdx2142, %found.conflict2145
  %bound02147 = icmp ult ptr %scevgep2093.a, %scevgep2094.a
  %conflict.rdx2149.a = or i1 %conflict.rdx2146, %bound02147
  %bound02150.a = icmp ult ptr %scevgep2093.a, %scevgep2096
  %bound12151.a = icmp ult ptr %scevgep2095.a, %scevgep2094.a
  %found.conflict2152.a = and i1 %bound02150.a, %bound12151.a
  %conflict.rdx2153.a = or i1 %conflict.rdx2149.a, %found.conflict2152.a
  %bound02154.a = icmp ult ptr %scevgep2095.a, %scevgep2098
  %bound12155.a = icmp ult ptr %scevgep2097, %scevgep2096
  %found.conflict2156.a = and i1 %bound02154.a, %bound12155.a
  %stride.check2157 = icmp slt i32 %i.oh, 0
  %3 = or i1 %found.conflict2156.a, %stride.check2157
  %conflict.rdx2158 = or i1 %conflict.rdx2153.a, %3
  %bound02159 = icmp ult ptr %scevgep2095.a, %scevgep2100
  %bound12160 = icmp ult ptr %scevgep2099, %scevgep2096
  %found.conflict2161 = and i1 %bound02159, %bound12160
  %conflict.rdx2163 = or i1 %found.conflict2161, %conflict.rdx2158
  %bound02164 = icmp ult ptr %scevgep2095.a, %scevgep2092.a
  %bound12165 = icmp ult ptr %scevgep2091.a, %scevgep2096
  %found.conflict2166 = and i1 %bound02164, %bound12165
  %conflict.rdx2167 = or i1 %conflict.rdx2163, %found.conflict2166
  %bound02168 = icmp ult ptr %scevgep2095.a, %scevgep2094.a
  %bound12169 = icmp ult ptr %scevgep2093.a, %scevgep2096
  %found.conflict2170 = and i1 %bound02168, %bound12169
  %conflict.rdx2171 = or i1 %conflict.rdx2167, %found.conflict2170
  %bound02172 = icmp ult ptr %scevgep2095.a, %scevgep2096
  %conflict.rdx2174 = or i1 %conflict.rdx2171, %bound02172
  %n.vec2178 = and i64 %i.rb, -4                  ; 3 uses
  %i.rd = or disjoint i64 %n.vec2178, 1
  %cmp.n2213 = icmp eq i64 %i.rb, %n.vec2178
  %min.iters.check = icmp ult i32 %i.oa, 16
  %i.re = icmp ult <4 x ptr> %i.qq, %i.qu
  %i.rf = icmp ult <4 x ptr> %i.qy, %i.ra
  %stride.check = icmp slt i32 %i.oh, 0
  %i.rg = and <4 x i1> %i.re, %i.rf
  %bound02056 = icmp ult ptr %i.od, %scevgep2040
  %bound12057 = icmp ult ptr %i.oe, %scevgep2039
  %found.conflict2058 = and i1 %bound02056, %bound12057
  %bound02060 = icmp ult ptr %i.od, %scevgep2042
  %bound12061 = icmp ult ptr %scevgep2041, %scevgep2039
  %found.conflict2062 = and i1 %bound02060, %bound12061
  %bound02065 = icmp ult ptr %i.od, %scevgep2043
  %bound12066 = icmp ult ptr %i.bc, %scevgep2039
  %found.conflict2067 = and i1 %bound02065, %bound12066
  %bound02070 = icmp ult ptr %i.oe, %scevgep2042
  %bound12071 = icmp ult ptr %scevgep2041, %scevgep2040
  %found.conflict2072 = and i1 %bound02070, %bound12071
  %bound02075 = icmp ult ptr %i.oe, %scevgep2043
  %bound12076 = icmp ult ptr %i.bc, %scevgep2040
  %found.conflict2077 = and i1 %bound02075, %bound12076
  %i.rh = bitcast <4 x i1> %i.rg to i4
  %i.ri = icmp ne i4 %i.rh, 0
  %op.rdx = or i1 %i.ri, %found.conflict2058
  %op.rdx2233 = or i1 %found.conflict2062, %found.conflict2067
  %op.rdx2234 = or i1 %found.conflict2072, %found.conflict2077
  %op.rdx2235 = or i1 %op.rdx, %op.rdx2233
  %op.rdx2236 = or i1 %op.rdx2234, %stride.check
  %op.rdx2237 = or i1 %op.rdx2235, %op.rdx2236
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge.i, %.preheader5.lr.ph.split.i
  %.lcssa89133.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa89132.i, %._crit_edge.i ] ; 6 uses
  %.lcssa87130.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa87129.i, %._crit_edge.i ] ; 6 uses
  %.lcssa85127.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa85126.i, %._crit_edge.i ] ; 6 uses
  %.lcssa83124.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa83123.i, %._crit_edge.i ] ; 3 uses
  %.lcssa81121.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa81120.i, %._crit_edge.i ] ; 3 uses
  %.lcssa79118.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa79117.i, %._crit_edge.i ] ; 3 uses
  %.lcssa77115.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa77114.i, %._crit_edge.i ] ; 3 uses
  %.lcssa75112.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa75111.i, %._crit_edge.i ] ; 3 uses
  %.lcssa73109.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa73108.i, %._crit_edge.i ] ; 3 uses
  %.lcssa71106.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa71105.i, %._crit_edge.i ] ; 3 uses
  %.lcssa69103.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa69102.i, %._crit_edge.i ] ; 3 uses
  %.lcssa67100.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa6799.i, %._crit_edge.i ] ; 3 uses
  %.lcssa6597.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa6596.i, %._crit_edge.i ] ; 6 uses
  %.lcssa6394.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa6393.i, %._crit_edge.i ] ; 6 uses
  %.lcssa6192.i = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %.lcssa6191.i, %._crit_edge.i ] ; 6 uses
  %i.rj = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zl, %._crit_edge.i ] ; 3 uses
  %i.rk = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zm, %._crit_edge.i ] ; 3 uses
  %i.rl = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zn, %._crit_edge.i ] ; 3 uses
  %i.rm = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zo, %._crit_edge.i ] ; 3 uses
  %i.rn = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zp, %._crit_edge.i ] ; 3 uses
  %i.ro = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zq, %._crit_edge.i ] ; 6 uses
  %i.rp = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zr, %._crit_edge.i ] ; 6 uses
  %i.rq = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zs, %._crit_edge.i ] ; 6 uses
  %i.rr = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zt, %._crit_edge.i ] ; 6 uses
  %i.rs = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zu, %._crit_edge.i ] ; 6 uses
  %i.rt = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zv, %._crit_edge.i ] ; 6 uses
  %i.ru = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zw, %._crit_edge.i ] ; 6 uses
  %i.rv = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zx, %._crit_edge.i ] ; 6 uses
  %i.rw = phi i32 [ 0, %.preheader5.lr.ph.split.i ], [ %i.zy, %._crit_edge.i ] ; 6 uses
  %indvars.iv25.i = phi i64 [ 0, %.preheader5.lr.ph.split.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 4 uses
  %i.rx = mul nsw i64 %indvars.iv25.i, %i.oi
  %i.ry = getelementptr inbounds i8, ptr %i.bc, i64 %i.rx ; 6 uses
  %i.rz = or disjoint i64 %indvars.iv25.i, 1
  %i.sa = mul nsw i64 %i.rz, %i.oi
  %i.sb = getelementptr inbounds i8, ptr %i.bc, i64 %i.sa ; 6 uses
  %.not.i346 = icmp eq i64 %indvars.iv25.i, 0
  br i1 %.not.i346, label %.lr.ph.split.us.i.preheader, label %.loopexit.i.peel

.lr.ph.split.us.i.preheader:                      ; preds = %.preheader5.i
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader2415, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  br i1 %op.rdx2237, label %.lr.ph.split.us.i.preheader2415, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %vector.recur = phi <4 x i16> [ %strided.vec, %vector.body ], [ <i16 poison, i16 poison, i16 poison, i16 0>, %vector.memcheck ]
  %vector.recur2080 = phi <4 x i16> [ %strided.vec2085, %vector.body ], [ <i16 poison, i16 poison, i16 poison, i16 0>, %vector.memcheck ]
  %vector.recur2081 = phi <4 x i32> [ %i.sl, %vector.body ], [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.memcheck ]
  %i.sc = shl nuw nsw i64 %index, 2               ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sc
  %wide.vec = load <8 x i16>, ptr %i.sd, align 2, !tbaa !79, !alias.scope !319 ; 3 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2082 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.sf = shufflevector <4 x i16> %vector.recur, <4 x i16> %strided.vec, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sg = zext <4 x i16> %strided.vec2082 to <4 x i32>
  %wide.vec2083 = load <8 x i16>, ptr %i.se, align 2, !tbaa !79, !alias.scope !320 ; 3 uses
  %strided.vec2084 = shufflevector <8 x i16> %wide.vec2083, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2085 = shufflevector <8 x i16> %wide.vec2083, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.sh = zext <4 x i16> %strided.vec2084 to <4 x i32> ; 2 uses
  %i.si = shufflevector <4 x i16> %vector.recur2080, <4 x i16> %strided.vec2085, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sj = sub nsw <4 x i32> %i.sg, %i.sh
  %i.sk = ashr <4 x i32> %i.sj, splat (i32 1)
  %i.sl = add nsw <4 x i32> %i.sk, %i.sh          ; 4 uses
  %i.sm = shufflevector <4 x i32> %vector.recur2081, <4 x i32> %i.sl, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sn = sub nsw <4 x i32> %i.sl, %i.sm
  %i.so = sub <4 x i16> %strided.vec2085, %i.si
  %i.sp = sub <4 x i16> %strided.vec, %i.sf
  %i.sq = trunc <4 x i32> %i.sn to <4 x i16>
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ob, i64 %index
  store <4 x i16> %i.sq, ptr %i.sr, align 2, !tbaa !79, !alias.scope !321, !noalias !322
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %index
  store <4 x i16> %i.so, ptr %i.ss, align 2, !tbaa !79, !alias.scope !323, !noalias !324
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.oe, i64 %index
  store <4 x i16> %i.sp, ptr %i.st, align 2, !tbaa !79, !alias.scope !325, !noalias !326
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.su = icmp eq i64 %index.next, %n.vec
  br i1 %i.su, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.vec, i64 6
  %vector.recur.extract2086 = extractelement <8 x i16> %wide.vec2083, i64 7
  %vector.recur.extract2087 = extractelement <4 x i32> %i.sl, i64 3
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.split.us.i.preheader2415

.lr.ph.split.us.i.preheader2415:                  ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %middle.block ]
  %.08311.us.i.ph = phi i16 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.08410.us.i.ph = phi i16 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.preheader ], [ %vector.recur.extract2086, %middle.block ]
  %.0859.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.preheader ], [ %vector.recur.extract2087, %middle.block ]
  br label %.lr.ph.split.us.i

.loopexit.i.peel:                                 ; preds = %.preheader5.i
  %i.sv = load i16, ptr %i.ry, align 2, !tbaa !79 ; 2 uses
  %i.sw = zext i16 %i.sv to i32                   ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !79
  %i.sz = zext i16 %i.sy to i32
  %i.ta = load i16, ptr %i.sb, align 2, !tbaa !79
  %i.tb = zext i16 %i.ta to i32                   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sb, i64 2
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !79 ; 2 uses
  %i.te = zext i16 %i.td to i32                   ; 3 uses
  %i.tf = sub nsw i32 %i.sz, %i.tb
  %i.tg = ashr i32 %i.tf, 1
  %i.th = add nsw i32 %i.tg, %i.tb                ; 4 uses
  %i.ti = trunc i32 %i.th to i16
  store i16 %i.ti, ptr %i.ob, align 2, !tbaa !79
  store i16 %i.td, ptr %i.od, align 2, !tbaa !79
  store i16 %i.sv, ptr %i.oe, align 2, !tbaa !79
  br i1 %exitcond.not.i349.peel, label %._crit_edge.i, label %.loopexit.i.preheader

.loopexit.i.preheader:                            ; preds = %.loopexit.i.peel
  br i1 %min.iters.check2176, label %.loopexit.i.preheader2416, label %vector.memcheck2090

vector.memcheck2090:                              ; preds = %.loopexit.i.preheader
  br i1 %conflict.rdx2174, label %.loopexit.i.preheader2416, label %vector.ph2177

vector.ph2177:                                    ; preds = %vector.memcheck2090
  %i.tj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa89133.i, i64 0
  %i.tk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa87130.i, i64 0
  %i.tl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa85127.i, i64 0
  %i.tm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa6597.i, i64 0
  %i.tn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa6394.i, i64 0
  %i.to = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa6192.i, i64 0
  %i.tp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ro, i64 0
  %i.tq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rp, i64 0
  %i.tr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rq, i64 0
  %i.ts = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rr, i64 0
  %i.tt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rs, i64 0
  %i.tu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rt, i64 0
  %i.tv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ru, i64 0
  %i.tw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rv, i64 0
  %i.tx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.rw, i64 0
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.sw, i64 3
  %vector.recur.init2196 = insertelement <4 x i32> poison, i32 %i.te, i64 3
  %vector.recur.init2198 = insertelement <4 x i32> poison, i32 %i.th, i64 3
  br label %vector.body2179

vector.body2179:                                  ; preds = %vector.body2179, %vector.ph2177
  %index2180 = phi i64 [ 0, %vector.ph2177 ], [ %index.next2208, %vector.body2179 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.tj, %vector.ph2177 ], [ %i.xs, %vector.body2179 ]
  %vec.phi2181.a = phi <4 x i32> [ %i.tk, %vector.ph2177 ], [ %i.xo, %vector.body2179 ]
  %vec.phi2182.a = phi <4 x i32> [ %i.tl, %vector.ph2177 ], [ %i.xk, %vector.body2179 ]
  %vec.phi2183.a = phi <4 x i32> [ %i.tm, %vector.ph2177 ], [ %i.vt, %vector.body2179 ]
  %vec.phi2184.a = phi <4 x i32> [ %i.tn, %vector.ph2177 ], [ %i.vm, %vector.body2179 ]
  %vec.phi2185 = phi <4 x i32> [ %i.to, %vector.ph2177 ], [ %i.vh, %vector.body2179 ]
  %vec.phi2186 = phi <4 x i32> [ %i.tp, %vector.ph2177 ], [ %i.xf, %vector.body2179 ]
  %vec.phi2187 = phi <4 x i32> [ %i.tq, %vector.ph2177 ], [ %i.xa, %vector.body2179 ]
  %vec.phi2188 = phi <4 x i32> [ %i.tr, %vector.ph2177 ], [ %i.wv, %vector.body2179 ]
  %vec.phi2189 = phi <4 x i32> [ %i.ts, %vector.ph2177 ], [ %i.wq, %vector.body2179 ]
  %vec.phi2190 = phi <4 x i32> [ %i.tt, %vector.ph2177 ], [ %i.wl, %vector.body2179 ]
  %vec.phi2191 = phi <4 x i32> [ %i.tu, %vector.ph2177 ], [ %i.wg, %vector.body2179 ]
  %vec.phi2192 = phi <4 x i32> [ %i.tv, %vector.ph2177 ], [ %i.we, %vector.body2179 ]
  %vec.phi2193 = phi <4 x i32> [ %i.tw, %vector.ph2177 ], [ %i.wb, %vector.body2179 ]
  %vec.phi2194 = phi <4 x i32> [ %i.tx, %vector.ph2177 ], [ %i.vx, %vector.body2179 ]
  %vector.recur2195 = phi <4 x i32> [ %vector.recur.init, %vector.ph2177 ], [ %i.uf, %vector.body2179 ]
  %vector.recur2197 = phi <4 x i32> [ %vector.recur.init2196, %vector.ph2177 ], [ %i.um, %vector.body2179 ]
  %vector.recur2199 = phi <4 x i32> [ %vector.recur.init2198, %vector.ph2177 ], [ %i.uq, %vector.body2179 ]
  %i.ty = or disjoint i64 %index2180, 1           ; 4 uses
  %i.tz = shl nuw nsw i64 %i.ty, 2                ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.tz
  %wide.vec2200 = load <8 x i16>, ptr %i.ua, align 2, !tbaa !79, !alias.scope !327
  %i.uc = freeze <8 x i16> %wide.vec2200          ; 2 uses
  %i.ud = bitcast <8 x i16> %i.uc to <4 x i32>
  %i.ue = bitcast <8 x i16> %i.uc to <4 x i32>
end_hunk_0
