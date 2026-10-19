Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/huf_decompress?download=true
inline.NumInlined: 435
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 34
begin_hunk_0_@HUF_decompress4X1_usingDTable_internal:bb.a
  %i.ji = lshr i32 %.sroa.12.144.i, 3             ; 2 uses
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr inbounds i8, ptr %.sroa.3820.143.i, i64 %i.jk
  %i.jm = icmp uge ptr %i.jl, %i.ix               ; 2 uses
  %i.jn = ptrtoint ptr %.sroa.3820.143.i to i64
  %i.jo = sub i64 %i.jn, %i.jd
  %i.jp = trunc i64 %i.jo to i32
  %.021.i39.i.i = select i1 %i.jm, i32 %i.ji, i32 %i.jp ; 2 uses
  %i.jq = shl i32 %.021.i39.i.i, 3
  %i.jr = sub i32 %.sroa.12.144.i, %i.jq
  br label %BIT_reloadDStream.exit43.i.i

BIT_reloadDStream.exit43.i.i:                     ; preds = %bb.l, %bb.j
  %.pn42.in.i = phi i32 [ %i.jf, %bb.j ], [ %.021.i39.i.i, %bb.l ]
  %.sroa.12.2.i = phi i32 [ %i.jg, %bb.j ], [ %i.jr, %bb.l ] ; 3 uses
  %.022.i38.i.i = phi i1 [ true, %bb.j ], [ %i.jm, %bb.l ]
  %.pn42.i = zext i32 %.pn42.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn42.i
  %.sroa.3820.2.i = getelementptr inbounds i8, ptr %.sroa.3820.143.i, i64 %.pn.i ; 2 uses
  %.sroa.0.2.i = load i64, ptr %.sroa.3820.2.i, align 1, !tbaa !22 ; 7 uses
  %i.js = icmp ult ptr %.0.i46.i, %i.je
  %i.jt = and i1 %i.js, %.022.i38.i.i
  br i1 %i.jt, label %bb.m, label %BIT_reloadDStream.exit.i.i

bb.m:                                             ; preds = %BIT_reloadDStream.exit43.i.i
  %i.ju = and i32 %.sroa.12.2.i, 63
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl i64 %.sroa.0.2.i, %i.jv
  %i.jx = lshr i64 %i.jw, 53
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !33
  %i.kb = load i8, ptr %i.jy, align 1, !tbaa !34
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add i32 %.sroa.12.2.i, %i.kc            ; 2 uses
  store i8 %i.ka, ptr %.0.i46.i, align 1, !tbaa !16
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 1
  %i.kf = and i32 %i.kd, 63
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = shl i64 %.sroa.0.2.i, %i.kg
  %i.ki = lshr i64 %i.kh, 53
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !33
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !34
  %i.kn = zext i8 %i.km to i32
  %i.ko = add i32 %i.kd, %i.kn                    ; 2 uses
  store i8 %i.kl, ptr %i.ke, align 1, !tbaa !16
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 2
  %i.kq = and i32 %i.ko, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl i64 %.sroa.0.2.i, %i.kr
  %i.kt = lshr i64 %i.ks, 53
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !33
  %i.kx = load i8, ptr %i.ku, align 1, !tbaa !34
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add i32 %i.ko, %i.ky                    ; 2 uses
  store i8 %i.kw, ptr %i.kp, align 1, !tbaa !16
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 3
  %i.lb = and i32 %i.kz, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl i64 %.sroa.0.2.i, %i.lc
  %i.le = lshr i64 %i.ld, 53
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !33
  %i.li = load i8, ptr %i.lf, align 1, !tbaa !34
  %i.lj = zext i8 %i.li to i32
  %i.lk = add i32 %i.kz, %i.lj                    ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i46.i, i64 4 ; 2 uses
  store i8 %i.lh, ptr %i.la, align 1, !tbaa !16
  %i.lm = icmp ugt i32 %i.lk, 64
  br i1 %i.lm, label %BIT_reloadDStream.exit.i.i, label %bb.i, !prof !43, !llvm.loop !4

bb.n:                                             ; preds = %bb.h
  %.not.i.i.i = icmp ult ptr %i.io, %i.iy
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ln = lshr i64 %i.iv, 3
  %i.lo = sub nsw i64 0, %i.ln
  %i.lp = getelementptr inbounds i8, ptr %i.io, i64 %i.lo
  %i.lq = and i32 %i.iw, 7
  %.val.i72.i = load i64, ptr %i.lp, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.lr = icmp eq ptr %i.io, %i.ix
  br i1 %i.lr, label %BIT_reloadDStream.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ls = lshr i32 %i.iw, 3                       ; 2 uses
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.io, i64 %i.lu
  %i.lw = icmp ult ptr %i.lv, %i.ix
  %i.lx = ptrtoint ptr %i.io to i64
  %i.ly = ptrtoint ptr %i.ix to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = trunc i64 %i.lz to i32
  %.021.i.i.i = select i1 %i.lw, i32 %i.ma, i32 %i.ls ; 2 uses
  %i.mb = zext i32 %.021.i.i.i to i64
  %i.mc = sub nsw i64 0, %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.io, i64 %i.mc
  %i.me = shl i32 %.021.i.i.i, 3
  %i.mf = sub i32 %i.iw, %i.me
  %.val59.i = load i64, ptr %i.md, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.m, %BIT_reloadDStream.exit43.i.i, %bb.k, %bb.q, %bb.p, %bb.o
  %.sroa.12.4.i = phi i32 [ %i.iw, %bb.p ], [ %i.mf, %bb.q ], [ %i.lq, %bb.o ], [ %.sroa.12.2.i, %BIT_reloadDStream.exit43.i.i ], [ %.sroa.12.144.i, %bb.k ], [ %i.lk, %bb.m ] ; 3 uses
  %.sroa.0.4.i = phi i64 [ %.val.i.i, %bb.p ], [ %.val59.i, %bb.q ], [ %.val.i72.i, %bb.o ], [ %.sroa.0.2.i, %BIT_reloadDStream.exit43.i.i ], [ %.sroa.0.145.i, %bb.k ], [ %.sroa.0.2.i, %bb.m ] ; 3 uses
  %.3.i.i = phi ptr [ %i.il, %bb.p ], [ %i.il, %bb.q ], [ %i.il, %bb.o ], [ %.0.i46.i, %BIT_reloadDStream.exit43.i.i ], [ %.0.i46.i, %bb.k ], [ %i.ll, %bb.m ] ; 5 uses
  %i.mg = icmp ult ptr %.3.i.i, %.1.i
  br i1 %i.mg, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %BIT_reloadDStream.exit.i.i
  %.3.i.i200 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.mh = sub i64 %i.iz, %.3.i.i200
  %xtraiter = and i64 %i.mh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.mi = and i32 %.sroa.12.4.i, 63
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = shl i64 %.sroa.0.4.i, %i.mj
  %i.ml = lshr i64 %i.mk, 53
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 1
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !33
  %i.mp = load i8, ptr %i.mm, align 1, !tbaa !34
  %i.mq = zext i8 %i.mp to i32
  %i.mr = add i32 %.sroa.12.4.i, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.mo, ptr %.3.i.i, align 1, !tbaa !16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.6.i48.i.unr = phi ptr [ %.3.i.i, %.lr.ph.i.preheader ], [ %i.ms, %.lr.ph.i.prol ]
  %.sroa.12.547.i.unr = phi i32 [ %.sroa.12.4.i, %.lr.ph.i.preheader ], [ %i.mr, %.lr.ph.i.prol ]
  %i.mt = add i64 %i.iz, -1
  %i.mu = icmp eq i64 %i.mt, %.3.i.i200
  br i1 %i.mu, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.6.i48.i = phi ptr [ %i.nq, %.lr.ph.i ], [ %.6.i48.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.12.547.i = phi i32 [ %i.np, %.lr.ph.i ], [ %.sroa.12.547.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.mv = and i32 %.sroa.12.547.i, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl i64 %.sroa.0.4.i, %i.mw
  %i.my = lshr i64 %i.mx, 53
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !33
  %i.nc = load i8, ptr %i.mz, align 1, !tbaa !34
  %i.nd = zext i8 %i.nc to i32
  %i.ne = add i32 %.sroa.12.547.i, %i.nd          ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.6.i48.i, i64 1
  store i8 %i.nb, ptr %.6.i48.i, align 1, !tbaa !16
  %i.ng = and i32 %i.ne, 63
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl i64 %.sroa.0.4.i, %i.nh
  %i.nj = lshr i64 %i.ni, 53
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !33
  %i.nn = load i8, ptr %i.nk, align 1, !tbaa !34
  %i.no = zext i8 %i.nn to i32
  %i.np = add i32 %i.ne, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %.6.i48.i, i64 2 ; 2 uses
  store i8 %i.nm, ptr %i.nf, align 1, !tbaa !16
  %exitcond.not.i.1 = icmp eq ptr %i.nq, %.1.i
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !5

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre.i = load ptr, ptr %i.ik, align 8, !tbaa !42
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %BIT_reloadDStream.exit.i.i
  %i.nr = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.il, %BIT_reloadDStream.exit.i.i ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.jb ; 2 uses
  store ptr %i.ns, ptr %i.ik, align 8, !tbaa !42
  %.not56.i = icmp eq ptr %i.ns, %.1.i
  br i1 %.not56.i, label %bb.e, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread

HUF_decompress4X1_usingDTable_internal_fast.exit.thread: ; preds = %bb.f, %bb.g, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %HUF_decompress4X1_usingDTable_internal_default.exit

HUF_decompress4X1_usingDTable_internal_fast.exit: ; preds = %bb.e, %bb.b
  %.6.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not17 = icmp eq i64 %.6.i, 0
  br i1 %.not17, label %bb.r, label %HUF_decompress4X1_usingDTable_internal_default.exit

bb.r:                                             ; preds = %HUF_decompress4X1_usingDTable_internal_fast.exit, %bb.a
  %i.nt = ptrtoaddr ptr %0 to i64                 ; 5 uses
  %i.nu = icmp ult i64 %3, 10
  %i.nv = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.nv, %i.nu
  br i1 %or.cond.i.i, label %HUF_decompress4X1_usingDTable_internal_default.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -3 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.val86.i = load i16, ptr %2, align 1, !tbaa !41 ; 5 uses
  %i.nz = zext i16 %.val86.i to i64               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85.i = load i16, ptr %i.oa, align 1, !tbaa !41 ; 5 uses
  %i.ob = zext i16 %.val85.i to i64               ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84.i = load i16, ptr %i.oc, align 1, !tbaa !41 ; 5 uses
  %i.od = zext i16 %.val84.i to i64               ; 2 uses
  %i.oe = add nuw nsw i64 %i.nz, 6
  %i.of = add nuw nsw i64 %i.oe, %i.ob
  %i.og = add nuw nsw i64 %i.of, %i.od            ; 2 uses
  %i.oh = sub nuw i64 %3, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.oj = getelementptr i8, ptr %i.oi, i64 %i.nz  ; 22 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.ob  ; 22 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 %i.od  ; 4 uses
  %i.om = add i64 %1, 3
  %i.on = lshr i64 %i.om, 2                       ; 8 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 %i.on ; 7 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.on ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.on ; 8 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 9 uses
  %i.or = icmp ugt i64 %i.og, %3
  %i.os = mul nuw nsw i64 %i.on, 3
  %i.ot = icmp samesign ugt i64 %i.os, %1
  %or.cond181.i.i = select i1 %i.or, i1 true, i1 %i.ot
  br i1 %or.cond181.i.i, label %BIT_initDStream.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ou = icmp eq i16 %.val86.i, 0
  br i1 %i.ou, label %BIT_initDStream.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ow = icmp ugt i16 %.val86.i, 7
  br i1 %i.ow, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ox = getelementptr i8, ptr %i.oj, i64 -1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !16  ; 2 uses
  %.not51.i.i = icmp eq i8 %i.oy, 0
  br i1 %.not51.i.i, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.v
  %i.oz = getelementptr inbounds i8, ptr %i.oj, i64 -8 ; 2 uses
  %.val.i.i26 = load i64, ptr %i.oz, align 1, !tbaa !22
  %i.pa = zext i8 %i.oy to i32
  %i.pb = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.pa, i1 true)
  %i.pc = xor i32 %i.pb, 31
  %i.pd = sub nuw nsw i32 8, %i.pc
  br label %bb.af

bb.w:                                             ; preds = %bb.u
  %i.pe = load i8, ptr %i.oi, align 1, !tbaa !16
  %i.pf = zext i8 %i.pe to i64                    ; 7 uses
  switch i16 %.val86.i, label %bb.ad [
    i16 7, label %bb.x
    i16 6, label %bb.y
    i16 5, label %bb.z
    i16 4, label %bb.aa
    i16 3, label %bb.ab
    i16 2, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !16
  %i.pi = zext i8 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 48
  %i.pk = or disjoint i64 %i.pj, %i.pf
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.pl = phi i64 [ %i.pk, %bb.x ], [ %i.pf, %bb.w ]
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !16
  %i.po = zext i8 %i.pn to i64
  %i.pp = shl nuw nsw i64 %i.po, 40
  %i.pq = add nuw nsw i64 %i.pp, %i.pl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.pr = phi i64 [ %i.pq, %bb.y ], [ %i.pf, %bb.w ]
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !16
  %i.pu = zext i8 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 32
  %i.pw = add nuw nsw i64 %i.pv, %i.pr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.px = phi i64 [ %i.pw, %bb.z ], [ %i.pf, %bb.w ]
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !16
  %i.qa = zext i8 %i.pz to i64
  %i.qb = shl nuw nsw i64 %i.qa, 24
  %i.qc = add nuw nsw i64 %i.qb, %i.px
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.qd = phi i64 [ %i.qc, %bb.aa ], [ %i.pf, %bb.w ]
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !16
  %i.qg = zext i8 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 16
  %i.qi = add nuw nsw i64 %i.qh, %i.qd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %i.qj = phi i64 [ %i.qi, %bb.ab ], [ %i.pf, %bb.w ]
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !16
  %i.qm = zext i8 %i.ql to i64
  %i.qn = shl nuw nsw i64 %i.qm, 8
  %i.qo = add nuw nsw i64 %i.qn, %i.qj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.sroa.0247.6.i = phi i64 [ %i.pf, %bb.w ], [ %i.qo, %bb.ac ]
  %i.qp = getelementptr i8, ptr %i.oj, i64 -1
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !16  ; 2 uses
  %.not.i87.i = icmp eq i8 %i.qq, 0
  br i1 %.not.i87.i, label %BIT_initDStream.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.qr = zext i8 %i.qq to i32
  %i.qs = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.qr, i1 true)
  %i.qt = shl nuw nsw i16 %.val86.i, 3
  %i.qu = zext nneg i16 %i.qt to i32
  %reass.sub = sub nsw i32 %i.qs, %i.qu
  %i.qv = add nsw i32 %reass.sub, 41
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread.i.i
  %.sroa.0247.7.i = phi i64 [ %.sroa.0247.6.i, %bb.ae ], [ %.val.i.i26, %.thread.i.i ] ; 2 uses
  %.sroa.25248.7.i = phi i32 [ %i.qv, %bb.ae ], [ %i.pd, %.thread.i.i ] ; 2 uses
  %.sroa.69266.6.i = phi ptr [ %i.oi, %bb.ae ], [ %i.oz, %.thread.i.i ] ; 2 uses
  %i.qw = icmp eq i16 %.val85.i, 0
  br i1 %i.qw, label %BIT_initDStream.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 3 uses
  %i.qy = icmp ugt i16 %.val85.i, 7
  br i1 %i.qy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.qz = getelementptr i8, ptr %i.ok, i64 -1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !16  ; 2 uses
  %.not51.i91.i = icmp eq i8 %i.ra, 0
  br i1 %.not51.i91.i, label %BIT_initDStream.exit.thread.i, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.ah
  %i.rb = getelementptr inbounds i8, ptr %i.ok, i64 -8 ; 2 uses
  %.val.i90.i = load i64, ptr %i.rb, align 1, !tbaa !22
  %i.rc = zext i8 %i.ra to i32
  %i.rd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.rc, i1 true)
  %i.re = xor i32 %i.rd, 31
  %i.rf = sub nuw nsw i32 8, %i.re
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.rg = load i8, ptr %i.oj, align 1, !tbaa !16
  %i.rh = zext i8 %i.rg to i64                    ; 7 uses
  switch i16 %.val85.i, label %bb.ap [
    i16 7, label %bb.aj
    i16 6, label %bb.ak
    i16 5, label %bb.al
    i16 4, label %bb.am
    i16 3, label %bb.an
    i16 2, label %bb.ao
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ri = getelementptr inbounds nuw i8, ptr %i.oj, i64 6
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !16
  %i.rk = zext i8 %i.rj to i64
  %i.rl = shl nuw nsw i64 %i.rk, 48
  %i.rm = or disjoint i64 %i.rl, %i.rh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.rn = phi i64 [ %i.rm, %bb.aj ], [ %i.rh, %bb.ai ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.oj, i64 5
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !16
  %i.rq = zext i8 %i.rp to i64
  %i.rr = shl nuw nsw i64 %i.rq, 40
  %i.rs = add nuw nsw i64 %i.rr, %i.rn
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.rt = phi i64 [ %i.rs, %bb.ak ], [ %i.rh, %bb.ai ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !16
  %i.rw = zext i8 %i.rv to i64
  %i.rx = shl nuw nsw i64 %i.rw, 32
  %i.ry = add nuw nsw i64 %i.rx, %i.rt
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %i.rz = phi i64 [ %i.ry, %bb.al ], [ %i.rh, %bb.ai ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !16
  %i.sc = zext i8 %i.sb to i64
  %i.sd = shl nuw nsw i64 %i.sc, 24
  %i.se = add nuw nsw i64 %i.sd, %i.rz
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %i.sf = phi i64 [ %i.se, %bb.am ], [ %i.rh, %bb.ai ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !16
  %i.si = zext i8 %i.sh to i64
  %i.sj = shl nuw nsw i64 %i.si, 16
  %i.sk = add nuw nsw i64 %i.sj, %i.sf
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %i.sl = phi i64 [ %i.sk, %bb.an ], [ %i.rh, %bb.ai ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !16
  %i.so = zext i8 %i.sn to i64
  %i.sp = shl nuw nsw i64 %i.so, 8
  %i.sq = add nuw nsw i64 %i.sp, %i.sl
  br label %bb.ap
end_hunk_0
begin_hunk_1_@HUF_decompress4X1_usingDTable_internal:bb.a
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !33
  %i.ami = load i8, ptr %i.amf, align 1, !tbaa !34
  %i.amj = zext i8 %i.ami to i32
  %i.amk = add i32 %.sroa.25182.2.i, %i.amj       ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.3.i205.i.i, i64 1
  store i8 %i.amh, ptr %.3.i205.i.i, align 1, !tbaa !16
  br label %.prol.loopexit204

.prol.loopexit204:                                ; preds = %.prol.loopexit204.unr-lcssa, %.lr.ph454.i
  %.6.i206.i453.i.unr = phi ptr [ %.3.i205.i.i, %.lr.ph454.i ], [ %i.aml, %.prol.loopexit204.unr-lcssa ]
  %.sroa.25182.3452.i.unr = phi i32 [ %.sroa.25182.2.i, %.lr.ph454.i ], [ %i.amk, %.prol.loopexit204.unr-lcssa ]
  %.lcssa182.unr.a = phi i32 [ poison, %.lr.ph454.i ], [ %i.amk, %.prol.loopexit204.unr-lcssa ]
  %i.amm = icmp eq i64 %i.alz, %.neg212
  br i1 %i.amm, label %HUF_decodeStreamX1.exit219.i.i, label %.lr.ph454.i.new

.lr.ph454.i.new:                                  ; preds = %.prol.loopexit204, %.lr.ph454.i.new
  %.6.i206.i453.i = phi ptr [ %i.ani, %.lr.ph454.i.new ], [ %.6.i206.i453.i.unr, %.prol.loopexit204 ] ; 3 uses
  %.sroa.25182.3452.i = phi i32 [ %i.anh, %.lr.ph454.i.new ], [ %.sroa.25182.3452.i.unr, %.prol.loopexit204 ] ; 2 uses
  %i.amn = and i32 %.sroa.25182.3452.i, 63
  %i.amo = zext nneg i32 %i.amn to i64
  %i.amp = shl i64 %.sroa.0181.2.i, %i.amo
  %i.amq = lshr i64 %i.amp, %i.alx
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.amq ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !33
  %i.amu = load i8, ptr %i.amr, align 1, !tbaa !34
  %i.amv = zext i8 %i.amu to i32
  %i.amw = add i32 %.sroa.25182.3452.i, %i.amv    ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.6.i206.i453.i, i64 1
  store i8 %i.amt, ptr %.6.i206.i453.i, align 1, !tbaa !16
  %i.amy = and i32 %i.amw, 63
  %i.amz = zext nneg i32 %i.amy to i64
  %i.ana = shl i64 %.sroa.0181.2.i, %i.amz
  %i.anb = lshr i64 %i.ana, %i.alx
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.anb ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 1
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !33
  %i.anf = load i8, ptr %i.anc, align 1, !tbaa !34
  %i.ang = zext i8 %i.anf to i32
  %i.anh = add i32 %i.amw, %i.ang                 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.6.i206.i453.i, i64 2 ; 2 uses
  store i8 %i.ane, ptr %i.amx, align 1, !tbaa !16
  %i.anj = icmp ult ptr %i.ani, %i.op
  br i1 %i.anj, label %.lr.ph454.i.new, label %HUF_decodeStreamX1.exit219.i.i, !llvm.loop !5

HUF_decodeStreamX1.exit219.i.i:                   ; preds = %.prol.loopexit204, %.lr.ph454.i.new, %BIT_reloadDStream.exit.i203.i.i
  %.sroa.25182.3.lcssa.i = phi i32 [ %.sroa.25182.2.i, %BIT_reloadDStream.exit.i203.i.i ], [ %.lcssa182.unr.a, %.prol.loopexit204 ], [ %i.anh, %.lr.ph454.i.new ]
  %i.ank = ptrtoint ptr %i.oq to i64
  %i.anl = ptrtoint ptr %.3153.i.i to i64
  %i.anm = sub i64 %i.ank, %i.anl
  %i.ann = icmp sgt i64 %i.anm, 3
  %i.ano = icmp ugt i32 %.sroa.25.0.i, 64         ; 2 uses
  br i1 %i.ann, label %.preheader375.i, label %bb.cj

.preheader375.i:                                  ; preds = %HUF_decodeStreamX1.exit219.i.i
  br i1 %i.ano, label %BIT_reloadDStream.exit.i185.i.i, label %.lr.ph460.i, !prof !28

.lr.ph460.i:                                      ; preds = %.preheader375.i
  %i.anp = ptrtoint ptr %i.ok to i64
  %i.anq = getelementptr inbounds i8, ptr %i.oq, i64 -3
  %i.anr = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ans = and i32 %i.anr, 63
  %i.ant = zext nneg i32 %i.ans to i64            ; 4 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %.lr.ph460.i
  %.0.i193.i459.i = phi ptr [ %.3153.i.i, %.lr.ph460.i ], [ %i.aqa, %bb.ci ] ; 8 uses
  %.sroa.69136.3458.i = phi ptr [ %.sroa.69136.0.i, %.lr.ph460.i ], [ %.sroa.69136.4.i, %bb.ci ] ; 5 uses
  %.sroa.25.4457.i = phi i32 [ %.sroa.25.0.i, %.lr.ph460.i ], [ %i.apz, %bb.ci ] ; 5 uses
  %.sroa.0.3456.i = phi i64 [ %.sroa.0.0.i, %.lr.ph460.i ], [ %.sroa.0.4.i22, %bb.ci ]
  %.not.i37.i194.i.i = icmp ult ptr %.sroa.69136.3458.i, %i.sz
  br i1 %.not.i37.i194.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.anu = lshr i32 %.sroa.25.4457.i, 3
  %i.anv = and i32 %.sroa.25.4457.i, 7
  br label %BIT_reloadDStream.exit43.i195.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.anw = icmp eq ptr %.sroa.69136.3458.i, %i.ok
  br i1 %i.anw, label %BIT_reloadDStream.exit.i185.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.anx = lshr i32 %.sroa.25.4457.i, 3           ; 2 uses
  %i.any = zext nneg i32 %i.anx to i64
  %i.anz = sub nsw i64 0, %i.any
  %i.aoa = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %i.anz
  %i.aob = icmp uge ptr %i.aoa, %i.ok             ; 2 uses
  %i.aoc = ptrtoint ptr %.sroa.69136.3458.i to i64
  %i.aod = sub i64 %i.aoc, %i.anp
  %i.aoe = trunc i64 %i.aod to i32
  %.021.i39.i197.i.i = select i1 %i.aob, i32 %i.anx, i32 %i.aoe ; 2 uses
  %i.aof = shl i32 %.021.i39.i197.i.i, 3
  %i.aog = sub i32 %.sroa.25.4457.i, %i.aof
  br label %BIT_reloadDStream.exit43.i195.i.i

BIT_reloadDStream.exit43.i195.i.i:                ; preds = %bb.ch, %bb.cf
  %.sroa.25.5.i = phi i32 [ %i.anv, %bb.cf ], [ %i.aog, %bb.ch ] ; 3 uses
  %.pn353.in.i = phi i32 [ %i.anu, %bb.cf ], [ %.021.i39.i197.i.i, %bb.ch ]
  %.022.i38.i196.i.i = phi i1 [ true, %bb.cf ], [ %i.aob, %bb.ch ]
  %.pn353.i = zext i32 %.pn353.in.i to i64
  %.pn352.i = sub nsw i64 0, %.pn353.i
  %.sroa.69136.4.i = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %.pn352.i ; 3 uses
  %.sroa.0.4.i22 = load i64, ptr %.sroa.69136.4.i, align 1, !tbaa !22 ; 7 uses
  %i.aoh = icmp ult ptr %.0.i193.i459.i, %i.anq
  %i.aoi = and i1 %i.aoh, %.022.i38.i196.i.i
  br i1 %i.aoi, label %bb.ci, label %BIT_reloadDStream.exit.i185.i.i

bb.ci:                                            ; preds = %BIT_reloadDStream.exit43.i195.i.i
  %i.aoj = and i32 %.sroa.25.5.i, 63
  %i.aok = zext nneg i32 %i.aoj to i64
  %i.aol = shl i64 %.sroa.0.4.i22, %i.aok
  %i.aom = lshr i64 %i.aol, %i.ant
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 1
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !33
  %i.aoq = load i8, ptr %i.aon, align 1, !tbaa !34
  %i.aor = zext i8 %i.aoq to i32
  %i.aos = add i32 %.sroa.25.5.i, %i.aor          ; 2 uses
  store i8 %i.aop, ptr %.0.i193.i459.i, align 1, !tbaa !16
  %i.aot = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 1
  %i.aou = and i32 %i.aos, 63
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = shl i64 %.sroa.0.4.i22, %i.aov
  %i.aox = lshr i64 %i.aow, %i.ant
  %i.aoy = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aox ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 1
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !33
  %i.apb = load i8, ptr %i.aoy, align 1, !tbaa !34
  %i.apc = zext i8 %i.apb to i32
  %i.apd = add i32 %i.aos, %i.apc                 ; 2 uses
  store i8 %i.apa, ptr %i.aot, align 1, !tbaa !16
  %i.ape = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 2
  %i.apf = and i32 %i.apd, 63
  %i.apg = zext nneg i32 %i.apf to i64
  %i.aph = shl i64 %.sroa.0.4.i22, %i.apg
  %i.api = lshr i64 %i.aph, %i.ant
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.api ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 1
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !33
  %i.apm = load i8, ptr %i.apj, align 1, !tbaa !34
  %i.apn = zext i8 %i.apm to i32
  %i.apo = add i32 %i.apd, %i.apn                 ; 2 uses
  store i8 %i.apl, ptr %i.ape, align 1, !tbaa !16
  %i.app = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 3
  %i.apq = and i32 %i.apo, 63
  %i.apr = zext nneg i32 %i.apq to i64
  %i.aps = shl i64 %.sroa.0.4.i22, %i.apr
  %i.apt = lshr i64 %i.aps, %i.ant
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.apt ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 1
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !33
  %i.apx = load i8, ptr %i.apu, align 1, !tbaa !34
  %i.apy = zext i8 %i.apx to i32
  %i.apz = add i32 %i.apo, %i.apy                 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 4 ; 2 uses
  store i8 %i.apw, ptr %i.app, align 1, !tbaa !16
  %i.aqb = icmp ugt i32 %i.apz, 64
  br i1 %i.aqb, label %BIT_reloadDStream.exit.i185.i.i, label %bb.ce, !prof !27, !llvm.loop !4

bb.cj:                                            ; preds = %HUF_decodeStreamX1.exit219.i.i
  br i1 %i.ano, label %BIT_reloadDStream.exit.i185.i.i, label %bb.ck, !prof !48

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i184.i.i = icmp ult ptr %.sroa.69136.0.i, %i.sz
  br i1 %.not.i.i184.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aqc = lshr i32 %.sroa.25.0.i, 3
  %i.aqd = zext nneg i32 %i.aqc to i64
  %i.aqe = sub nsw i64 0, %i.aqd
  %i.aqf = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.aqe ; 2 uses
  %i.aqg = and i32 %.sroa.25.0.i, 7
  %.val.i114.i = load i64, ptr %i.aqf, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i185.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.aqh = icmp eq ptr %.sroa.69136.0.i, %i.ok
  br i1 %i.aqh, label %BIT_reloadDStream.exit.i185.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aqi = lshr i32 %.sroa.25.0.i, 3              ; 2 uses
  %i.aqj = zext nneg i32 %i.aqi to i64
  %i.aqk = sub nsw i64 0, %i.aqj
  %i.aql = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.aqk
  %i.aqm = icmp ult ptr %i.aql, %i.ok
  %i.aqn = ptrtoint ptr %.sroa.69136.0.i to i64
  %i.aqo = ptrtoint ptr %i.ok to i64
  %i.aqp = sub i64 %i.aqn, %i.aqo
  %i.aqq = trunc i64 %i.aqp to i32
  %.021.i.i189.i.i = select i1 %i.aqm, i32 %i.aqq, i32 %i.aqi ; 2 uses
  %i.aqr = zext i32 %.021.i.i189.i.i to i64
  %i.aqs = sub nsw i64 0, %i.aqr
  %i.aqt = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.aqs ; 2 uses
  %i.aqu = shl i32 %.021.i.i189.i.i, 3
  %i.aqv = sub i32 %.sroa.25.0.i, %i.aqu
  %.val9.i = load i64, ptr %i.aqt, align 1, !tbaa !22
  br label %BIT_reloadDStream.exit.i185.i.i

BIT_reloadDStream.exit.i185.i.i:                  ; preds = %bb.ci, %BIT_reloadDStream.exit43.i195.i.i, %bb.cg, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %.preheader375.i
  %.sroa.0.2.i18 = phi i64 [ %.val9.i, %bb.cn ], [ %.sroa.0.0.i, %bb.cj ], [ %.val.i114.i, %bb.cl ], [ %.sroa.0.0.i, %bb.cm ], [ %.sroa.0.0.i, %.preheader375.i ], [ %.sroa.0.3456.i, %bb.cg ], [ %.sroa.0.4.i22, %bb.ci ], [ %.sroa.0.4.i22, %BIT_reloadDStream.exit43.i195.i.i ]
  %.sroa.25.2.i = phi i32 [ %i.aqv, %bb.cn ], [ %.sroa.25.0.i, %bb.cj ], [ %i.aqg, %bb.cl ], [ %.sroa.25.0.i, %bb.cm ], [ %.sroa.25.0.i, %.preheader375.i ], [ %.sroa.25.4457.i, %bb.cg ], [ %i.apz, %bb.ci ], [ %.sroa.25.5.i, %BIT_reloadDStream.exit43.i195.i.i ] ; 2 uses
  %.sroa.69136.2.i = phi ptr [ %i.aqt, %bb.cn ], [ @BIT_reloadDStream.zeroFilled, %bb.cj ], [ %i.aqf, %bb.cl ], [ %i.ok, %bb.cm ], [ @BIT_reloadDStream.zeroFilled, %.preheader375.i ], [ %i.ok, %bb.cg ], [ @BIT_reloadDStream.zeroFilled, %bb.ci ], [ %.sroa.69136.4.i, %BIT_reloadDStream.exit43.i195.i.i ]
  %.3.i187.i.i = phi ptr [ %.3153.i.i, %bb.cn ], [ %.3153.i.i, %bb.cj ], [ %.3153.i.i, %bb.cl ], [ %.3153.i.i, %bb.cm ], [ %.3153.i.i, %.preheader375.i ], [ %.0.i193.i459.i, %bb.cg ], [ %i.aqa, %bb.ci ], [ %.0.i193.i459.i, %BIT_reloadDStream.exit43.i195.i.i ] ; 2 uses
  %i.aqw = icmp ult ptr %.3.i187.i.i, %i.oq
  br i1 %i.aqw, label %.lr.ph476.i, label %HUF_decodeStreamX1.exit201.i.i

.lr.ph476.i:                                      ; preds = %BIT_reloadDStream.exit.i185.i.i
  %i.aqx = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.aqy = and i32 %i.aqx, 63
  %i.aqz = zext nneg i32 %i.aqy to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph476.i
  %.6.i188.i475.i = phi ptr [ %.3.i187.i.i, %.lr.ph476.i ], [ %i.ark, %bb.co ] ; 2 uses
  %.sroa.25.3474.i = phi i32 [ %.sroa.25.2.i, %.lr.ph476.i ], [ %i.arj, %bb.co ] ; 2 uses
  %i.ara = and i32 %.sroa.25.3474.i, 63
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = shl i64 %.sroa.0.2.i18, %i.arb
  %i.ard = lshr i64 %i.arc, %i.aqz
  %i.are = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.ard ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 1
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !33
  %i.arh = load i8, ptr %i.are, align 1, !tbaa !34
  %i.ari = zext i8 %i.arh to i32
  %i.arj = add i32 %.sroa.25.3474.i, %i.ari       ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %.6.i188.i475.i, i64 1 ; 2 uses
  store i8 %i.arg, ptr %.6.i188.i475.i, align 1, !tbaa !16
  %8 = icmp ult ptr %i.ark, %i.oq
  br i1 %8, label %bb.co, label %HUF_decodeStreamX1.exit201.i.i, !llvm.loop !5

HUF_decodeStreamX1.exit201.i.i:                   ; preds = %bb.co, %BIT_reloadDStream.exit.i185.i.i
  %.sroa.25.3.lcssa.i = phi i32 [ %.sroa.25.2.i, %BIT_reloadDStream.exit.i185.i.i ], [ %i.arj, %bb.co ]
  %i.arl = ptrtoint ptr %i.nw to i64
  %i.arm = ptrtoint ptr %.3149.i.i to i64
  %i.arn = sub i64 %i.arl, %i.arm
  %i.aro = icmp sgt i64 %i.arn, 3
  %i.arp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.arq = load i32, ptr %i.arp, align 8, !tbaa !46 ; 9 uses
  %i.arr = icmp ugt i32 %i.arq, 64                ; 2 uses
  br i1 %i.aro, label %.preheader.i19, label %bb.cu

.preheader.i19:                                   ; preds = %HUF_decodeStreamX1.exit201.i.i
  br i1 %i.arr, label %._crit_edge.i21, label %.lr.ph479.i, !prof !28

.lr.ph479.i:                                      ; preds = %.preheader.i19
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.arv = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.arw = and i32 %i.arv, 63
  %i.arx = zext nneg i32 %i.arw to i64            ; 4 uses
  %.pre.i20 = load ptr, ptr %i.ars, align 8, !tbaa !47
  %.pre498.i = load ptr, ptr %i.art, align 8, !tbaa !45
  br label %bb.cp

._crit_edge.i21:                                  ; preds = %bb.ct, %.preheader.i19
  %i.ary = phi i32 [ %i.arq, %.preheader.i19 ], [ %i.aup, %bb.ct ]
  %.0.i.i.lcssa.i = phi ptr [ %.3149.i.i, %.preheader.i19 ], [ %i.auq, %bb.ct ]
  %i.arz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.arz, align 8, !tbaa !47
  br label %BIT_reloadDStream.exit.i.i.i

bb.cp:                                            ; preds = %bb.ct, %.lr.ph479.i
  %i.asa = phi ptr [ %.pre.i20, %.lr.ph479.i ], [ %storemerge.in.i, %bb.ct ] ; 7 uses
  %i.asb = phi i32 [ %i.arq, %.lr.ph479.i ], [ %i.aup, %bb.ct ] ; 5 uses
  %.0.i.i478.i = phi ptr [ %.3149.i.i, %.lr.ph479.i ], [ %i.auq, %bb.ct ] ; 8 uses
  %.not.i37.i.i.i = icmp ult ptr %i.asa, %.pre498.i
  br i1 %.not.i37.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.asc = lshr i32 %i.asb, 3
  %i.asd = zext nneg i32 %i.asc to i64
  %i.ase = sub nsw i64 0, %i.asd
  %i.asf = getelementptr inbounds i8, ptr %i.asa, i64 %i.ase ; 2 uses
  store ptr %i.asf, ptr %i.ars, align 8, !tbaa !47
  %i.asg = and i32 %i.asb, 7
  br label %BIT_reloadDStream.exit43.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ash = load ptr, ptr %i.aru, align 8, !tbaa !50 ; 3 uses
  %i.asi = icmp eq ptr %i.asa, %i.ash
  br i1 %i.asi, label %BIT_reloadDStream.exit.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.asj = lshr i32 %i.asb, 3                     ; 2 uses
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = sub nsw i64 0, %i.ask
  %i.asm = getelementptr inbounds i8, ptr %i.asa, i64 %i.asl
  %i.asn = icmp uge ptr %i.asm, %i.ash            ; 2 uses
  %i.aso = ptrtoint ptr %i.asa to i64
  %i.asp = ptrtoint ptr %i.ash to i64
  %i.asq = sub i64 %i.aso, %i.asp
  %i.asr = trunc i64 %i.asq to i32
  %.021.i39.i.i.i = select i1 %i.asn, i32 %i.asj, i32 %i.asr ; 2 uses
  %i.ass = zext i32 %.021.i39.i.i.i to i64
  %i.ast = sub nsw i64 0, %i.ass
  %i.asu = getelementptr inbounds i8, ptr %i.asa, i64 %i.ast ; 2 uses
  store ptr %i.asu, ptr %i.ars, align 8, !tbaa !47
  %i.asv = shl i32 %.021.i39.i.i.i, 3
  %i.asw = sub i32 %i.asb, %i.asv
  br label %BIT_reloadDStream.exit43.i.i.i

BIT_reloadDStream.exit43.i.i.i:                   ; preds = %bb.cs, %bb.cq
  %.val81.i = phi i32 [ %i.asg, %bb.cq ], [ %i.asw, %bb.cs ] ; 4 uses
  %storemerge.in.i = phi ptr [ %i.asf, %bb.cq ], [ %i.asu, %bb.cs ] ; 3 uses
  %.022.i38.i.i.i = phi i1 [ true, %bb.cq ], [ %i.asn, %bb.cs ]
  store i32 %.val81.i, ptr %i.arp, align 8, !tbaa !46
  %storemerge.i = load i64, ptr %storemerge.in.i, align 1, !tbaa !22 ; 5 uses
  store i64 %storemerge.i, ptr %6, align 8, !tbaa !49
  %i.asx = icmp ult ptr %.0.i.i478.i, %i.nx
  %i.asy = and i1 %i.asx, %.022.i38.i.i.i
  br i1 %i.asy, label %bb.ct, label %BIT_reloadDStream.exit.i.i.i

bb.ct:                                            ; preds = %BIT_reloadDStream.exit43.i.i.i
  %i.asz = and i32 %.val81.i, 63
  %i.ata = zext nneg i32 %i.asz to i64
  %i.atb = shl i64 %storemerge.i, %i.ata
  %i.atc = lshr i64 %i.atb, %i.arx
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.atc ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 1
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !33
  %i.atg = load i8, ptr %i.atd, align 1, !tbaa !34
  %i.ath = zext i8 %i.atg to i32
  %i.ati = add i32 %.val81.i, %i.ath              ; 2 uses
  store i8 %i.atf, ptr %.0.i.i478.i, align 1, !tbaa !16
  %i.atj = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 1
  %i.atk = and i32 %i.ati, 63
  %i.atl = zext nneg i32 %i.atk to i64
  %i.atm = shl i64 %storemerge.i, %i.atl
  %i.atn = lshr i64 %i.atm, %i.arx
  %i.ato = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.atn ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 1
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !33
  %i.atr = load i8, ptr %i.ato, align 1, !tbaa !34
  %i.ats = zext i8 %i.atr to i32
  %i.att = add i32 %i.ati, %i.ats                 ; 2 uses
  store i8 %i.atq, ptr %i.atj, align 1, !tbaa !16
  %i.atu = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 2
  %i.atv = and i32 %i.att, 63
  %i.atw = zext nneg i32 %i.atv to i64
  %i.atx = shl i64 %storemerge.i, %i.atw
  %i.aty = lshr i64 %i.atx, %i.arx
  %i.atz = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.aty ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 1
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !33
  %i.auc = load i8, ptr %i.atz, align 1, !tbaa !34
  %i.aud = zext i8 %i.auc to i32
  %i.aue = add i32 %i.att, %i.aud                 ; 2 uses
  store i8 %i.aub, ptr %i.atu, align 1, !tbaa !16
  %i.auf = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 3
  %i.aug = and i32 %i.aue, 63
  %i.auh = zext nneg i32 %i.aug to i64
  %i.aui = shl i64 %storemerge.i, %i.auh
  %i.auj = lshr i64 %i.aui, %i.arx
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.auj ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 1
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !33
  %i.aun = load i8, ptr %i.auk, align 1, !tbaa !34
  %i.auo = zext i8 %i.aun to i32
  %i.aup = add i32 %i.aue, %i.auo                 ; 4 uses
  store i32 %i.aup, ptr %i.arp, align 8, !tbaa !46
  %i.auq = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 4 ; 2 uses
  store i8 %i.aum, ptr %i.auf, align 1, !tbaa !16
  %i.aur = icmp ugt i32 %i.aup, 64
  br i1 %i.aur, label %._crit_edge.i21, label %bb.cp, !prof !27, !llvm.loop !4

bb.cu:                                            ; preds = %HUF_decodeStreamX1.exit201.i.i
  %i.aus = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.arr, label %bb.cv, label %bb.cw, !prof !48

bb.cv:                                            ; preds = %bb.cu
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.aus, align 8, !tbaa !47
  br label %BIT_reloadDStream.exit.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !47 ; 7 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !45
  %.not.i.i.i.i = icmp ult ptr %i.aut, %i.auv
  br i1 %.not.i.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.auw = lshr i32 %i.arq, 3
  %i.aux = zext nneg i32 %i.auw to i64
  %i.auy = sub nsw i64 0, %i.aux
  %i.auz = getelementptr inbounds i8, ptr %i.aut, i64 %i.auy ; 3 uses
  store ptr %i.auz, ptr %i.aus, align 8, !tbaa !47
  %i.ava = and i32 %i.arq, 7                      ; 2 uses
  store i32 %i.ava, ptr %i.arp, align 8, !tbaa !46
  %.val.i116.i = load i64, ptr %i.auz, align 1, !tbaa !22
  store i64 %.val.i116.i, ptr %6, align 8, !tbaa !49
  br label %BIT_reloadDStream.exit.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.avb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !50 ; 3 uses
  %i.avd = icmp eq ptr %i.aut, %i.avc
  br i1 %i.avd, label %BIT_reloadDStream.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ave = lshr i32 %i.arq, 3                     ; 2 uses
  %i.avf = zext nneg i32 %i.ave to i64
  %i.avg = sub nsw i64 0, %i.avf
  %i.avh = getelementptr inbounds i8, ptr %i.aut, i64 %i.avg
  %i.avi = icmp ult ptr %i.avh, %i.avc
  %i.avj = ptrtoint ptr %i.aut to i64
  %i.avk = ptrtoint ptr %i.avc to i64
  %i.avl = sub i64 %i.avj, %i.avk
  %i.avm = trunc i64 %i.avl to i32
  %.021.i.i.i.i = select i1 %i.avi, i32 %i.avm, i32 %i.ave ; 2 uses
  %i.avn = zext i32 %.021.i.i.i.i to i64
  %i.avo = sub nsw i64 0, %i.avn
  %i.avp = getelementptr inbounds i8, ptr %i.aut, i64 %i.avo ; 3 uses
  store ptr %i.avp, ptr %i.aus, align 8, !tbaa !47
  %i.avq = shl i32 %.021.i.i.i.i, 3
  %i.avr = sub i32 %i.arq, %i.avq                 ; 2 uses
  store i32 %i.avr, ptr %i.arp, align 8, !tbaa !46
  %.val11.i = load i64, ptr %i.avp, align 1, !tbaa !22
  store i64 %.val11.i, ptr %6, align 8, !tbaa !49
  br label %BIT_reloadDStream.exit.i.i.i

BIT_reloadDStream.exit.i.i.i:                     ; preds = %BIT_reloadDStream.exit43.i.i.i, %bb.cr, %bb.cz, %bb.cy, %bb.cx, %bb.cv, %._crit_edge.i21
  %i.avs = phi i32 [ %i.ary, %._crit_edge.i21 ], [ %i.arq, %bb.cv ], [ %i.avr, %bb.cz ], [ %i.arq, %bb.cy ], [ %i.ava, %bb.cx ], [ %.val81.i, %BIT_reloadDStream.exit43.i.i.i ], [ %i.asb, %bb.cr ]
  %i.avt = phi ptr [ @BIT_reloadDStream.zeroFilled, %._crit_edge.i21 ], [ @BIT_reloadDStream.zeroFilled, %bb.cv ], [ %i.avp, %bb.cz ], [ %i.aut, %bb.cy ], [ %i.auz, %bb.cx ], [ %storemerge.in.i, %BIT_reloadDStream.exit43.i.i.i ], [ %i.asa, %bb.cr ]
  %.3.i.i.i = phi ptr [ %.0.i.i.lcssa.i, %._crit_edge.i21 ], [ %.3149.i.i, %bb.cv ], [ %.3149.i.i, %bb.cz ], [ %.3149.i.i, %bb.cy ], [ %.3149.i.i, %bb.cx ], [ %.0.i.i478.i, %bb.cr ], [ %.0.i.i478.i, %BIT_reloadDStream.exit43.i.i.i ] ; 6 uses
  %i.avu = icmp ult ptr %.3.i.i.i, %i.nw
  br i1 %i.avu, label %.lr.ph482.i, label %HUF_decodeStreamX1.exit.i.i

.lr.ph482.i:                                      ; preds = %BIT_reloadDStream.exit.i.i.i
  %.3.i.i495.i = ptrtoaddr ptr %.3.i.i.i to i64   ; 2 uses
  %i.avv = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.avw = and i32 %i.avv, 63
end_hunk_1
