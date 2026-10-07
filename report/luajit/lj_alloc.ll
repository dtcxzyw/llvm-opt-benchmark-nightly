Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_alloc?download=true
inline.NumInlined: 21
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_alloc_malloc:bb.a

bb.ch:                                            ; preds = %bb.cf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0189.i = phi ptr [ %i.kq, %bb.ch ], [ %i.kj, %bb.cg ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store ptr %i.ig, ptr %i.kr, align 8, !tbaa !23
  %i.ks = getelementptr inbounds nuw i8, ptr %.0189.i, i64 24
  store ptr %i.ig, ptr %i.ks, align 8, !tbaa !22
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %.0189.i, ptr %i.kt, align 8, !tbaa !23
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store ptr %i.kj, ptr %i.ku, align 8, !tbaa !22
  br label %tmalloc_large.exit

bb.cj:                                            ; preds = %bb.ce
  %i.kv = lshr i64 %.4197.lcssa.i, 8
  %i.kw = trunc i64 %i.kv to i32                  ; 3 uses
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ky = icmp ugt i32 %i.kw, 65535
  br i1 %i.ky, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kz = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.kw, i1 true) ; 2 uses
  %i.la = shl nuw nsw i32 %i.kz, 1
  %i.lb = xor i32 %i.la, 62
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = sub nuw nsw i32 38, %i.kz
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = lshr i64 %.4197.lcssa.i, %i.le
  %i.lg = and i64 %i.lf, 1
  %i.lh = or disjoint i64 %i.lg, %i.lc
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0188.i = phi i64 [ %i.lh, %bb.cl ], [ 0, %bb.cj ], [ 31, %bb.ck ] ; 5 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.0188.i ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  store i64 %.0188.i, ptr %i.lj, align 8, !tbaa !44
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i8 0, i64 16, i1 false)
  %i.ll = load i32, ptr %i.fv, align 4, !tbaa !45 ; 2 uses
  %i.lm = trunc nuw nsw i64 %.0188.i to i32
  %i.ln = shl nuw i32 1, %i.lm                    ; 2 uses
  %i.lo = and i32 %i.ll, %i.ln
  %.not250.i = icmp eq i32 %i.lo, 0
  br i1 %.not250.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lp = or i32 %i.ll, %i.ln
  store i32 %i.lp, ptr %i.fv, align 4, !tbaa !45
  store ptr %i.ig, ptr %i.li, align 8, !tbaa !43
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  store ptr %i.li, ptr %i.lq, align 8, !tbaa !40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store ptr %i.ig, ptr %i.lr, align 8, !tbaa !42
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.ig, ptr %i.ls, align 8, !tbaa !41
  br label %tmalloc_large.exit

bb.co:                                            ; preds = %bb.cm
  %i.lt = load ptr, ptr %i.li, align 8, !tbaa !43
  %i.lu = icmp eq i64 %.0188.i, 31
  %i.lv = lshr i64 %.0188.i, 1
  %i.lw = sub nuw nsw i64 57, %i.lv
  %i.lx = select i1 %i.lu, i64 0, i64 %i.lw
  %i.ly = shl i64 %.4197.lcssa.i, %i.lx
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %bb.co
  %.0185.i = phi ptr [ %i.lt, %bb.co ], [ %i.mg, %bb.cq ] ; 5 uses
  %.0184.i = phi i64 [ %i.ly, %bb.co ], [ %i.mf, %bb.cq ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0185.i, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !48
  %i.mb = and i64 %i.ma, -4
  %.not251.i = icmp eq i64 %i.mb, %.4197.lcssa.i
  br i1 %.not251.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mc = getelementptr inbounds nuw i8, ptr %.0185.i, i64 32 ; 2 uses
  %i.md = lshr i64 %.0184.i, 63                   ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.md
  %i.mf = shl i64 %.0184.i, 1
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !43 ; 2 uses
  %.not252.i = icmp eq ptr %i.mg, null
  br i1 %.not252.i, label %.thread263.i, label %bb.cp

.thread263.i:                                     ; preds = %bb.cq
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.md
  store ptr %i.ig, ptr %i.mh, align 8, !tbaa !43
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  store ptr %.0185.i, ptr %i.mi, align 8, !tbaa !40
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store ptr %i.ig, ptr %i.mj, align 8, !tbaa !42
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.ig, ptr %i.mk, align 8, !tbaa !41
  br label %tmalloc_large.exit

bb.cr:                                            ; preds = %bb.cp
  %i.ml = getelementptr inbounds nuw i8, ptr %.0185.i, i64 16 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !41 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store ptr %i.ig, ptr %i.mn, align 8, !tbaa !42
  store ptr %i.ig, ptr %i.ml, align 8, !tbaa !41
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.mm, ptr %i.mo, align 8, !tbaa !41
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store ptr %.0185.i, ptr %i.mp, align 8, !tbaa !42
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  store ptr null, ptr %i.mq, align 8, !tbaa !40
  br label %tmalloc_large.exit

tmalloc_large.exit:                               ; preds = %bb.cd, %bb.ci, %bb.cn, %.thread263.i, %bb.cr
  %i.mr = getelementptr inbounds nuw i8, ptr %.4.lcssa.i, i64 16
  br label %alloc_sys.exit

tmalloc_large.exit.thread:                        ; preds = %bb.bg, %._crit_edge.i, %bb.bk, %bb.g, %bb.t, %bb.aw, %bb.ax
  %.0144 = phi i64 [ -1, %bb.aw ], [ %i.fu, %bb.ax ], [ %i.e, %bb.g ], [ %i.e, %bb.t ], [ %i.fu, %bb.bk ], [ %i.fu, %._crit_edge.i ], [ %i.fu, %bb.bg ] ; 19 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !46 ; 5 uses
  %.not171 = icmp ugt i64 %.0144, %i.mt
  br i1 %.not171, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %tmalloc_large.exit.thread
  %i.mu = sub nuw i64 %i.mt, %.0144               ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !35 ; 6 uses
  %i.mx = icmp ugt i64 %i.mu, 31
  br i1 %i.mx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.0144 ; 2 uses
  %i.mz = or i64 %i.mu, 1
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !13
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mt
  store i64 %i.mu, ptr %i.nb, align 8, !tbaa !34
  %i.nc = or i64 %.0144, 3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !13
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ne = or i64 %i.mt, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !13
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mt
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !13
  %i.nj = or i64 %i.ni, 1
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !13
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sink230 = phi ptr [ %i.my, %bb.ct ], [ null, %bb.cu ]
  %.sink = phi i64 [ %i.mu, %bb.ct ], [ 0, %bb.cu ]
  store ptr %.sink230, ptr %i.mv, align 8, !tbaa !35
  store i64 %.sink, ptr %i.ms, align 8, !tbaa !46
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  br label %alloc_sys.exit

bb.cw:                                            ; preds = %tmalloc_large.exit.thread
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !25 ; 2 uses
  %i.nn = icmp ult i64 %.0144, %i.nm
  br i1 %i.nn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.no = sub nuw i64 %i.nm, %.0144               ; 2 uses
  store i64 %i.no, ptr %i.nl, align 8, !tbaa !25
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !24 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.0144 ; 2 uses
  store ptr %i.nr, ptr %i.np, align 8, !tbaa !24
  %i.ns = or i64 %i.no, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !13
  %i.nu = or i64 %.0144, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !13
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  br label %alloc_sys.exit

bb.cy:                                            ; preds = %bb.cw
  %i.nx = icmp ugt i64 %.0144, 131071
  br i1 %i.nx, label %bb.cz, label %bb.da, !prof !62

bb.cz:                                            ; preds = %bb.cy
  %i.ny = tail call fastcc ptr @direct_alloc(ptr noundef nonnull %0, i64 noundef range(i64 -1, -113) %.0144) ; 2 uses
  %.not.i184 = icmp eq ptr %i.ny, null
  br i1 %.not.i184, label %bb.da, label %alloc_sys.exit

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.nz = add i64 %.0144, 131136
  %i.oa = and i64 %i.nz, -131072                  ; 3 uses
  %i.ob = icmp ugt i64 %i.oa, %.0144
  br i1 %i.ob, label %bb.db, label %alloc_sys.exit, !prof !49

bb.db:                                            ; preds = %bb.da
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !30
  %i.oe = tail call fastcc ptr @mmap_probe(ptr noundef %i.od, i64 noundef %i.oa) ; 11 uses
  %.not84.i = icmp eq ptr %i.oe, inttoptr (i64 -1 to ptr) ; 2 uses
  %spec.select.i182 = select i1 %.not84.i, i64 0, i64 %i.oa ; 6 uses
  br i1 %.not84.i, label %alloc_sys.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 5 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.de, %bb.dc
  %.074116.i = phi ptr [ %i.of, %bb.dc ], [ %i.ol, %bb.de ] ; 4 uses
  %i.og = load ptr, ptr %.074116.i, align 8, !tbaa !31 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.074116.i, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !32 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oi
  %.not87.i = icmp eq ptr %i.oe, %i.oj
  br i1 %.not87.i, label %.critedge.i182, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ok = getelementptr inbounds nuw i8, ptr %.074116.i, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !33 ; 2 uses
  %.not86.i = icmp eq ptr %i.ol, null
  br i1 %.not86.i, label %.critedge92.i.a, label %bb.dd, !llvm.loop !59

.critedge.i182:                                   ; preds = %bb.dd
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !24 ; 5 uses
  %.not88.i = icmp uge ptr %i.on, %i.og
  %i.oo = icmp ult ptr %i.on, %i.oe
  %or.cond.i183 = and i1 %.not88.i, %i.oo
  br i1 %or.cond.i183, label %bb.df, label %.critedge92.i.a

bb.df:                                            ; preds = %.critedge.i182
  %i.op = getelementptr inbounds nuw i8, ptr %.074116.i, i64 8
  %i.oq = add i64 %i.oi, %spec.select.i182
  store i64 %i.oq, ptr %i.op, align 8, !tbaa !32
  %i.or = load i64, ptr %i.nl, align 8, !tbaa !25
  %i.os = add i64 %i.or, %spec.select.i182        ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = sub i64 0, %i.ou
  %i.ow = and i64 %i.ov, 7                        ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.ow ; 2 uses
  %i.oy = sub i64 %i.os, %i.ow                    ; 2 uses
  store ptr %i.ox, ptr %i.om, align 8, !tbaa !24
  store i64 %i.oy, ptr %i.nl, align 8, !tbaa !25
  %i.oz = or i64 %i.oy, 1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store i64 %i.oz, ptr %i.pa, align 8, !tbaa !13
  %i.pb = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.os
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i64 64, ptr %i.pc, align 8, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2097152, ptr %i.pd, align 8, !tbaa !26
  br label %add_segment.exit.i

.critedge92.i.a:                                  ; preds = %bb.de, %.critedge.i182
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oe, i64 %spec.select.i182
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dh, %.critedge92.i.a
  %.175117.i = phi ptr [ %i.of, %.critedge92.i.a ], [ %i.ph, %bb.dh ] ; 4 uses
  %i.pf = load ptr, ptr %.175117.i, align 8, !tbaa !31 ; 3 uses
  %.not90.i = icmp eq ptr %i.pf, %i.pe
  br i1 %.not90.i, label %.critedge3.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pg = getelementptr inbounds nuw i8, ptr %.175117.i, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !33 ; 2 uses
  %.not89.i = icmp eq ptr %i.ph, null
  br i1 %.not89.i, label %.critedge93.i, label %bb.dg, !llvm.loop !60

.critedge3.i:                                     ; preds = %bb.dg
  store ptr %i.oe, ptr %.175117.i, align 8, !tbaa !31
  %i.pi = getelementptr inbounds nuw i8, ptr %.175117.i, i64 8 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !32
  %i.pk = add i64 %i.pj, %spec.select.i182
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !32
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = sub i64 0, %i.pm
  %i.po = and i64 %i.pn, 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.po ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = sub i64 0, %i.pr
  %i.pt = and i64 %i.ps, 7
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pt ; 18 uses
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.pp to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.0144 ; 30 uses
  %i.py = add i64 %.0144, %i.pw
  %i.pz = sub i64 %i.pv, %i.py                    ; 4 uses
  %i.qa = or i64 %.0144, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i64 %i.qa, ptr %i.qb, align 8, !tbaa !13
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !24
  %i.qe = icmp eq ptr %i.pu, %i.qd
  br i1 %i.qe, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.critedge3.i
  %i.qf = load i64, ptr %i.nl, align 8, !tbaa !25
  %i.qg = add i64 %i.qf, %i.pz                    ; 2 uses
  store i64 %i.qg, ptr %i.nl, align 8, !tbaa !25
  store ptr %i.px, ptr %i.qc, align 8, !tbaa !24
  %i.qh = or i64 %i.qg, 1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %i.qh, ptr %i.qi, align 8, !tbaa !13
  br label %prepend_alloc.exit.i

bb.dj:                                            ; preds = %.critedge3.i
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !35
  %i.ql = icmp eq ptr %i.pu, %i.qk
  br i1 %i.ql, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.qm = load i64, ptr %i.ms, align 8, !tbaa !46
  %i.qn = add i64 %i.qm, %i.pz                    ; 4 uses
  store i64 %i.qn, ptr %i.ms, align 8, !tbaa !46
  store ptr %i.px, ptr %i.qj, align 8, !tbaa !35
  %i.qo = or i64 %i.qn, 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !13
  %i.qq = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qn
  store i64 %i.qn, ptr %i.qq, align 8, !tbaa !34
  br label %prepend_alloc.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !13 ; 5 uses
  %i.qt = and i64 %i.qs, 2
  %.not.i.i = icmp eq i64 %i.qt, 0
  br i1 %.not.i.i, label %bb.dm, label %bb.ei

bb.dm:                                            ; preds = %bb.dl
  %i.qu = and i64 %i.qs, -4                       ; 2 uses
  %i.qv = lshr i64 %i.qs, 3
  %i.qw = icmp ult i64 %i.qs, 256
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !36 ; 7 uses
  br i1 %i.qw, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !23 ; 3 uses
  %i.rb = icmp eq ptr %i.ra, %i.qy
  br i1 %i.rb, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.rc = trunc nuw nsw i64 %i.qv to i32
  %i.rd = shl nuw i32 1, %i.rc
  %i.re = xor i32 %i.rd, -1
  %i.rf = load i32, ptr %0, align 8, !tbaa !37
  %i.rg = and i32 %i.rf, %i.re
  store i32 %i.rg, ptr %0, align 8, !tbaa !37
  br label %bb.eh

bb.dp:                                            ; preds = %bb.dn
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  store ptr %i.qy, ptr %i.rh, align 8, !tbaa !22
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %i.ra, ptr %i.ri, align 8, !tbaa !23
  br label %bb.eh

bb.dq:                                            ; preds = %bb.dm
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pu, i64 48
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !40 ; 4 uses
  %.not197.i.i = icmp eq ptr %i.qy, %i.pu
  br i1 %.not197.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !41 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  store ptr %i.qy, ptr %i.rn, align 8, !tbaa !42
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %i.rm, ptr %i.ro, align 8, !tbaa !41
  br label %bb.dw

bb.ds:                                            ; preds = %bb.dq
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pu, i64 40 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !43 ; 2 uses
  %.not198.i.i = icmp eq ptr %i.rq, null
  br i1 %.not198.i.i, label %bb.dt, label %.critedge.i.i.preheader

bb.dt:                                            ; preds = %bb.ds
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pu, i64 32 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !43 ; 2 uses
  %.not199.i.i = icmp eq ptr %i.rs, null
  br i1 %.not199.i.i, label %bb.dw, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.dt, %bb.ds
  %.1181.i.i.ph = phi ptr [ %i.rq, %bb.ds ], [ %i.rs, %bb.dt ]
  %.1179.i.i.ph = phi ptr [ %i.rp, %bb.ds ], [ %i.rr, %bb.dt ]
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %.critedge.i.i.preheader
  %.1181.i.i = phi ptr [ %.1181.i.i.ph, %.critedge.i.i.preheader ], [ %.1181.i.i.be, %.critedge.i.i.backedge ] ; 3 uses
  %.1179.i.i = phi ptr [ %.1179.i.i.ph, %.critedge.i.i.preheader ], [ %.1179.i.i.be, %.critedge.i.i.backedge ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.1181.i.i, i64 40 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !43 ; 2 uses
  %.not200.i.i = icmp eq ptr %i.ru, null
  br i1 %.not200.i.i, label %bb.du, label %.critedge.i.i.backedge

bb.du:                                            ; preds = %.critedge.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.1181.i.i, i64 32 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !43 ; 2 uses
  %.not201.i.i = icmp eq ptr %i.rw, null
  br i1 %.not201.i.i, label %bb.dv, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %bb.du, %.critedge.i.i
  %.1181.i.i.be = phi ptr [ %i.ru, %.critedge.i.i ], [ %i.rw, %bb.du ]
  %.1179.i.i.be = phi ptr [ %i.rt, %.critedge.i.i ], [ %i.rv, %bb.du ]
  br label %.critedge.i.i, !llvm.loop !61

bb.dv:                                            ; preds = %bb.du
  store ptr null, ptr %.1179.i.i, align 8, !tbaa !43
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt, %bb.dr
  %.3.i.i = phi ptr [ %i.qy, %bb.dr ], [ %.1181.i.i, %bb.dv ], [ null, %bb.dt ] ; 10 uses
  %.not202.i.i = icmp eq ptr %i.rk, null
  br i1 %.not202.i.i, label %bb.eh, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pu, i64 56
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !44 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %i.rz ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !43
  %i.sc = icmp eq ptr %i.pu, %i.sb
  br i1 %i.sc, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store ptr %.3.i.i, ptr %i.sa, align 8, !tbaa !43
  %cond.i.i = icmp eq ptr %.3.i.i, null
  br i1 %cond.i.i, label %.thread231.i.i, label %bb.ed

.thread231.i.i:                                   ; preds = %bb.dy
  %i.sd = trunc i64 %i.rz to i32
  %i.se = shl nuw i32 1, %i.sd
  %i.sf = xor i32 %i.se, -1
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !45
  %i.si = and i32 %i.sh, %i.sf
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !45
  br label %bb.eh

bb.dz:                                            ; preds = %bb.dx
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rk, i64 32 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !43
  %i.sl = icmp eq ptr %i.sk, %i.pu
  br i1 %i.sl, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store ptr %.3.i.i, ptr %i.sj, align 8, !tbaa !43
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  store ptr %.3.i.i, ptr %i.sm, align 8, !tbaa !43
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.not203.i.i = icmp eq ptr %.3.i.i, null
  br i1 %.not203.i.i, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dy
  %i.sn = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 48
  store ptr %i.rk, ptr %i.sn, align 8, !tbaa !40
  %i.so = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !43 ; 3 uses
  %.not204.i.i = icmp eq ptr %i.sp, null
  br i1 %.not204.i.i, label %bb.ef, label %bb.ee

end_hunk_0
begin_hunk_1_@lj_alloc_malloc:bb.a
  store ptr %.3.i.i, ptr %i.sv, align 8, !tbaa !40
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ec, %.thread231.i.i, %bb.dw, %bb.dp, %bb.do
  %i.sw = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.qu ; 2 uses
  %i.sx = add i64 %i.qu, %i.pz
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !13
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.dl
  %i.sy = phi i64 [ %i.qs, %bb.dl ], [ %.pre.i.i, %bb.eh ]
  %.0182.i.i = phi i64 [ %i.pz, %bb.dl ], [ %i.sx, %bb.eh ] ; 9 uses
  %.0174.i.i = phi ptr [ %i.pu, %bb.dl ], [ %i.sw, %bb.eh ]
  %i.sz = getelementptr inbounds nuw i8, ptr %.0174.i.i, i64 8
  %i.ta = and i64 %i.sy, -2
  store i64 %i.ta, ptr %i.sz, align 8, !tbaa !13
  %i.tb = or i64 %.0182.i.i, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i64 %i.tb, ptr %i.tc, align 8, !tbaa !13
  %i.td = getelementptr inbounds nuw i8, ptr %i.px, i64 %.0182.i.i
  store i64 %.0182.i.i, ptr %i.td, align 8, !tbaa !34
  %i.te = icmp ult i64 %.0182.i.i, 256
  br i1 %i.te, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.tf = lshr i64 %.0182.i.i, 3                  ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.idx.i.i = shl nuw nsw i64 %i.tf, 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.idx.i.i ; 4 uses
  %i.ti = load i32, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.tj = trunc nuw nsw i64 %i.tf to i32
  %i.tk = shl nuw i32 1, %i.tj                    ; 2 uses
  %i.tl = and i32 %i.ti, %i.tk
  %.not209.i.i = icmp eq i32 %i.tl, 0
  br i1 %.not209.i.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.tm = or i32 %i.ti, %i.tk
  store i32 %i.tm, ptr %0, align 8, !tbaa !37
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !23
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0176.i.i = phi ptr [ %i.to, %bb.el ], [ %i.th, %bb.ek ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store ptr %i.px, ptr %i.tp, align 8, !tbaa !23
  %i.tq = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 24
  store ptr %i.px, ptr %i.tq, align 8, !tbaa !22
  %i.tr = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store ptr %.0176.i.i, ptr %i.tr, align 8, !tbaa !23
  %i.ts = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store ptr %i.th, ptr %i.ts, align 8, !tbaa !22
  br label %prepend_alloc.exit.i

bb.en:                                            ; preds = %bb.ei
  %i.tt = lshr i64 %.0182.i.i, 8
  %i.tu = trunc i64 %i.tt to i32                  ; 3 uses
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.tw = icmp ugt i32 %i.tu, 65535
  br i1 %i.tw, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tx = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.tu, i1 true) ; 2 uses
  %i.ty = shl nuw nsw i32 %i.tx, 1
  %i.tz = xor i32 %i.ty, 62
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = sub nuw nsw i32 38, %i.tx
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = lshr i64 %.0182.i.i, %i.uc
  %i.ue = and i64 %i.ud, 1
  %i.uf = or disjoint i64 %i.ue, %i.ua
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %.0175.i.i = phi i64 [ %i.uf, %bb.ep ], [ 0, %bb.en ], [ 31, %bb.eo ] ; 5 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.0175.i.i ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.px, i64 56
  store i64 %.0175.i.i, ptr %i.ui, align 8, !tbaa !44
  %i.uj = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uj, i8 0, i64 16, i1 false)
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !45 ; 2 uses
  %i.um = trunc nuw nsw i64 %.0175.i.i to i32
  %i.un = shl nuw i32 1, %i.um                    ; 2 uses
  %i.uo = and i32 %i.ul, %i.un
  %.not206.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not206.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.up = or i32 %i.ul, %i.un
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !45
  store ptr %i.px, ptr %i.uh, align 8, !tbaa !43
  %i.uq = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  store ptr %i.uh, ptr %i.uq, align 8, !tbaa !40
  %i.ur = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store ptr %i.px, ptr %i.ur, align 8, !tbaa !42
  %i.us = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store ptr %i.px, ptr %i.us, align 8, !tbaa !41
  br label %prepend_alloc.exit.i

bb.es:                                            ; preds = %bb.eq
  %i.ut = load ptr, ptr %i.uh, align 8, !tbaa !43
  %i.uu = icmp eq i64 %.0175.i.i, 31
  %i.uv = lshr i64 %.0175.i.i, 1
  %i.uw = sub nuw nsw i64 57, %i.uv
  %i.ux = select i1 %i.uu, i64 0, i64 %i.uw
  %i.uy = shl i64 %.0182.i.i, %i.ux
  br label %bb.et

bb.et:                                            ; preds = %bb.eu, %bb.es
  %.0173.i.i = phi ptr [ %i.ut, %bb.es ], [ %i.vg, %bb.eu ] ; 5 uses
  %.0172.i.i = phi i64 [ %i.uy, %bb.es ], [ %i.vf, %bb.eu ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0173.i.i, i64 8
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !48
  %i.vb = and i64 %i.va, -4
  %.not207.i.i = icmp eq i64 %i.vb, %.0182.i.i
  br i1 %.not207.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vc = getelementptr inbounds nuw i8, ptr %.0173.i.i, i64 32 ; 2 uses
  %i.vd = lshr i64 %.0172.i.i, 63                 ; 2 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vd
  %i.vf = shl i64 %.0172.i.i, 1
  %i.vg = load ptr, ptr %i.ve, align 8, !tbaa !43 ; 2 uses
  %.not208.i.i = icmp eq ptr %i.vg, null
  br i1 %.not208.i.i, label %.thread.i.i, label %bb.et

.thread.i.i:                                      ; preds = %bb.eu
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vd
  store ptr %i.px, ptr %i.vh, align 8, !tbaa !43
  %i.vi = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  store ptr %.0173.i.i, ptr %i.vi, align 8, !tbaa !40
  %i.vj = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store ptr %i.px, ptr %i.vj, align 8, !tbaa !42
  %i.vk = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store ptr %i.px, ptr %i.vk, align 8, !tbaa !41
  br label %prepend_alloc.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.vl = getelementptr inbounds nuw i8, ptr %.0173.i.i, i64 16 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !41 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  store ptr %i.px, ptr %i.vn, align 8, !tbaa !42
  store ptr %i.px, ptr %i.vl, align 8, !tbaa !41
  %i.vo = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store ptr %i.vm, ptr %i.vo, align 8, !tbaa !41
  %i.vp = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store ptr %.0173.i.i, ptr %i.vp, align 8, !tbaa !42
  %i.vq = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  store ptr null, ptr %i.vq, align 8, !tbaa !40
  br label %prepend_alloc.exit.i

prepend_alloc.exit.i:                             ; preds = %bb.ev, %.thread.i.i, %bb.er, %bb.em, %bb.dk, %bb.di
  %i.vr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  br label %alloc_sys.exit

.critedge93.i:                                    ; preds = %bb.dh
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !24 ; 24 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ey, %.critedge93.i
  %.0.i.i.i = phi ptr [ %i.of, %.critedge93.i ], [ %i.wa, %bb.ey ] ; 3 uses
  %i.vu = load ptr, ptr %.0.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.vt, %i.vu
  br i1 %.not.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !32
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vw ; 4 uses
  %i.vy = icmp ult ptr %i.vt, %i.vx
  br i1 %i.vy, label %segment_holding.exit.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.vz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !33, !nonnull !47, !noundef !47
  br label %bb.ew

segment_holding.exit.i.i:                         ; preds = %bb.ex
  %i.wb = getelementptr inbounds i8, ptr %i.vx, i64 -71
  %i.wc = getelementptr inbounds i8, ptr %i.vx, i64 -55
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = sub i64 0, %i.wd
  %i.wf = and i64 %i.we, 7
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vt, i64 32 ; 2 uses
  %i.wi = icmp ult ptr %i.wg, %i.wh
  %i.wj = select i1 %i.wi, ptr %i.vt, ptr %i.wg   ; 5 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  %i.wm = add i64 %spec.select.i182, -64          ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = sub i64 0, %i.wo
  %i.wq = and i64 %i.wp, 7                        ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.wq ; 2 uses
  %i.ws = sub nuw nsw i64 %i.wm, %i.wq            ; 2 uses
  store ptr %i.wr, ptr %i.vs, align 8, !tbaa !24
  store i64 %i.ws, ptr %i.nl, align 8, !tbaa !25
  %i.wt = or i64 %i.ws, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store i64 %i.wt, ptr %i.wu, align 8, !tbaa !13
  %i.wv = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.wm
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store i64 64, ptr %i.ww, align 8, !tbaa !13
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2097152, ptr %i.wx, align 8, !tbaa !26
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  store i64 35, ptr %i.wy, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wk, ptr noundef nonnull align 8 dereferenceable(24) %i.of, i64 24, i1 false), !tbaa.struct !65
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !19
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i64 %spec.select.i182, ptr %i.wz, align 8, !tbaa !20
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %i.wk, ptr %i.xa, align 8, !tbaa !66
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %segment_holding.exit.i.i
  %.0127.i.i = phi ptr [ %i.wl, %segment_holding.exit.i.i ], [ %i.xb, %bb.ez ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.0127.i.i, i64 8 ; 2 uses
  store i64 11, ptr %i.xb, align 8, !tbaa !13
  %i.xc = getelementptr inbounds nuw i8, ptr %.0127.i.i, i64 16
  %i.xd = icmp ult ptr %i.xc, %i.vx
  br i1 %i.xd, label %bb.ez, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.not.i94.i = icmp eq ptr %i.wj, %i.vt
  br i1 %.not.i94.i, label %add_segment.exit.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xe = ptrtoint ptr %i.wj to i64
  %i.xf = ptrtoint ptr %i.vt to i64
  %i.xg = sub i64 %i.xe, %i.xf                    ; 9 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.xg ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !13
  %i.xk = and i64 %i.xj, -2
  store i64 %i.xk, ptr %i.xi, align 8, !tbaa !13
  %i.xl = or i64 %i.xg, 1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store i64 %i.xl, ptr %i.xm, align 8, !tbaa !13
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !34
  %i.xn = icmp ult i64 %i.xg, 256
  br i1 %i.xn, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.xo = lshr i64 %i.xg, 3                       ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.idx.i96.i = shl nuw nsw i64 %i.xo, 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %.idx.i96.i ; 4 uses
  %i.xr = load i32, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.xs = trunc nuw nsw i64 %i.xo to i32
  %i.xt = shl nuw i32 1, %i.xs                    ; 2 uses
  %i.xu = and i32 %i.xr, %i.xt
  %.not137.i.i = icmp eq i32 %i.xu, 0
  br i1 %.not137.i.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.xv = or i32 %i.xr, %i.xt
  store i32 %i.xv, ptr %0, align 8, !tbaa !37
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !23
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0124.i.i = phi ptr [ %i.xx, %bb.fe ], [ %i.xq, %bb.fd ] ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  store ptr %i.vt, ptr %i.xy, align 8, !tbaa !23
  %i.xz = getelementptr inbounds nuw i8, ptr %.0124.i.i, i64 24
  store ptr %i.vt, ptr %i.xz, align 8, !tbaa !22
  br label %.sink.split.i.i

bb.fg:                                            ; preds = %bb.fb
  %i.ya = lshr i64 %i.xg, 8
  %i.yb = trunc i64 %i.ya to i32                  ; 3 uses
  %i.yc = icmp eq i32 %i.yb, 0
  br i1 %i.yc, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.yd = icmp ugt i32 %i.yb, 65535
  br i1 %i.yd, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ye = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.yb, i1 true) ; 2 uses
  %i.yf = shl nuw nsw i32 %i.ye, 1
  %i.yg = xor i32 %i.yf, 62
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = sub nuw nsw i32 38, %i.ye
  %i.yj = zext nneg i32 %i.yi to i64
  %i.yk = lshr i64 %i.xg, %i.yj
  %i.yl = and i64 %i.yk, 1
  %i.ym = or disjoint i64 %i.yl, %i.yh
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %.0123.i.i = phi i64 [ %i.ym, %bb.fi ], [ 0, %bb.fg ], [ 31, %bb.fh ] ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %.0123.i.i ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.vt, i64 56
  store i64 %.0123.i.i, ptr %i.yp, align 8, !tbaa !44
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i8 0, i64 16, i1 false)
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !45 ; 2 uses
  %i.ys = trunc nuw nsw i64 %.0123.i.i to i32
  %i.yt = shl nuw i32 1, %i.ys                    ; 2 uses
  %i.yu = and i32 %i.yr, %i.yt
  %.not134.i.i = icmp eq i32 %i.yu, 0
  br i1 %.not134.i.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.yv = or i32 %i.yr, %i.yt
  store i32 %i.yv, ptr %i.yq, align 4, !tbaa !45
  store ptr %i.vt, ptr %i.yo, align 8, !tbaa !43
  %i.yw = getelementptr inbounds nuw i8, ptr %i.vt, i64 48
  store ptr %i.yo, ptr %i.yw, align 8, !tbaa !40
  br label %.sink.split.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.yx = load ptr, ptr %i.yo, align 8, !tbaa !43
  %i.yy = icmp eq i64 %.0123.i.i, 31
  %i.yz = lshr i64 %.0123.i.i, 1
  %i.za = sub nuw nsw i64 57, %i.yz
  %i.zb = select i1 %i.yy, i64 0, i64 %i.za
  %i.zc = shl i64 %i.xg, %i.zb
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fn, %bb.fl
  %.0122.i.i = phi ptr [ %i.yx, %bb.fl ], [ %i.zk, %bb.fn ] ; 5 uses
  %.0.i.i = phi i64 [ %i.zc, %bb.fl ], [ %i.zj, %bb.fn ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !48
  %i.zf = and i64 %i.ze, -4
  %.not135.i.i = icmp eq i64 %i.zf, %i.xg
  br i1 %.not135.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.zg = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32 ; 2 uses
  %i.zh = lshr i64 %.0.i.i, 63                    ; 2 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zh
  %i.zj = shl i64 %.0.i.i, 1
  %i.zk = load ptr, ptr %i.zi, align 8, !tbaa !43 ; 2 uses
  %.not136.i.i = icmp eq ptr %i.zk, null
  br i1 %.not136.i.i, label %.thread.i95.i, label %bb.fm

.thread.i95.i:                                    ; preds = %bb.fn
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zh
  store ptr %i.vt, ptr %i.zl, align 8, !tbaa !43
  %i.zm = getelementptr inbounds nuw i8, ptr %i.vt, i64 48
  store ptr %.0122.i.i, ptr %i.zm, align 8, !tbaa !40
  br label %.sink.split.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.zn = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !41 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  store ptr %i.vt, ptr %i.zp, align 8, !tbaa !42
  store ptr %i.vt, ptr %i.zn, align 8, !tbaa !41
  %i.zq = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store ptr %i.zo, ptr %i.zq, align 8, !tbaa !41
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.fo, %.thread.i95.i, %bb.fk, %bb.ff
  %.sink160.i.i = phi i64 [ 24, %.thread.i95.i ], [ 16, %bb.ff ], [ 24, %bb.fo ], [ 24, %bb.fk ]
  %.sink158.i.i = phi ptr [ %i.vt, %.thread.i95.i ], [ %.0124.i.i, %bb.ff ], [ %.0122.i.i, %bb.fo ], [ %i.vt, %bb.fk ]
  %.sink157.i.i = phi i64 [ 16, %.thread.i95.i ], [ 24, %bb.ff ], [ 48, %bb.fo ], [ 16, %bb.fk ]
  %.sink.i.i = phi ptr [ %i.vt, %.thread.i95.i ], [ %i.xq, %bb.ff ], [ null, %bb.fo ], [ %i.vt, %bb.fk ]
  %i.zr = getelementptr inbounds nuw i8, ptr %i.vt, i64 %.sink160.i.i
  store ptr %.sink158.i.i, ptr %i.zr, align 8, !tbaa !36
  %i.zs = getelementptr inbounds nuw i8, ptr %i.vt, i64 %.sink157.i.i
  store ptr %.sink.i.i, ptr %i.zs, align 8, !tbaa !36
  br label %add_segment.exit.i

add_segment.exit.i:                               ; preds = %.sink.split.i.i, %bb.fa, %bb.df
  %i.zt = load i64, ptr %i.nl, align 8, !tbaa !25 ; 2 uses
  %i.zu = icmp ult i64 %.0144, %i.zt
  br i1 %i.zu, label %bb.fp, label %alloc_sys.exit

bb.fp:                                            ; preds = %add_segment.exit.i
  %i.zv = sub nuw i64 %i.zt, %.0144               ; 2 uses
  store i64 %i.zv, ptr %i.nl, align 8, !tbaa !25
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !24 ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 %.0144 ; 2 uses
  store ptr %i.zy, ptr %i.zw, align 8, !tbaa !24
  %i.zz = or i64 %i.zv, 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  store i64 %i.zz, ptr %i.aaa, align 8, !tbaa !13
  %i.aab = or i64 %.0144, 3
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  store i64 %i.aab, ptr %i.aac, align 8, !tbaa !13
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  br label %alloc_sys.exit

alloc_sys.exit:                                   ; preds = %bb.s, %bb.m, %tmalloc_small.exit, %bb.f, %bb.fp, %add_segment.exit.i, %prepend_alloc.exit.i, %bb.db, %bb.da, %bb.cz, %tmalloc_large.exit, %bb.cx, %bb.cv
  %.1 = phi ptr [ %i.nk, %bb.cv ], [ %i.nw, %bb.cx ], [ %i.mr, %tmalloc_large.exit ], [ %i.aad, %bb.fp ], [ %i.ny, %bb.cz ], [ null, %bb.da ], [ null, %add_segment.exit.i ], [ null, %bb.db ], [ %i.vr, %prepend_alloc.exit.i ], [ %i.av, %bb.s ], [ %i.av, %bb.m ], [ %i.fr, %tmalloc_small.exit ], [ %i.s, %bb.f ]
  ret ptr %.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @lj_alloc_realloc(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, -129
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 10 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, -4                         ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = icmp ult i64 %2, 23
  %i.h = add nuw i64 %2, 15
  %i.i = and i64 %i.h, -8
  %i.j = select i1 %i.g, i64 32, i64 %i.i         ; 12 uses
  %i.k = and i64 %i.d, 1                          ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not81 = icmp eq i64 %i.m, 0
  br i1 %.not81, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %i.j, 256
  br i1 %i.n, label %direct_resize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i64 %i.j, 8
  %.not.i = icmp uge i64 %i.e, %i.o
  %i.p = sub nuw i64 %i.e, %i.j
  %i.q = icmp ult i64 %i.p, 65537
  %or.cond.i = select i1 %.not.i, i1 %i.q, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.l, -2                         ; 4 uses
  %i.s = add i64 %i.r, 32
  %i.t = add i64 %i.s, %i.e
  %i.u = add i64 %i.j, 4144
  %i.v = and i64 %i.u, -4096                      ; 3 uses
  %i.w = sub i64 0, %i.r
  %i.x = getelementptr inbounds i8, ptr %i.b, i64 %i.w
  %i.y = tail call ptr @__errno_location() #10    ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef nonnull %i.x, i64 noundef %i.t, i64 noundef %i.v, i32 noundef 1) #11 ; 3 uses
  store i32 %i.z, ptr %i.y, align 4, !tbaa !27
  %.not31.i = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not31.i, label %direct_resize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 3 uses
  %i.ac = sub i64 %i.v, %i.r
  %i.ad = add i64 %i.ac, -32                      ; 2 uses
  %i.ae = or i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 11, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  store i64 0, ptr %i.aj, align 8, !tbaa !13
  br label %bb.n

bb.h:                                             ; preds = %bb.c, %bb.b
  %.not82 = icmp ult i64 %i.e, %i.j
  br i1 %.not82, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = sub nuw i64 %i.e, %i.j                  ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 31
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.an = or disjoint i64 %i.j, %i.k
  %i.ao = or disjoint i64 %i.an, 2
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = or disjoint i64 %i.ak, 3
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.at = or i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  tail call fastcc void @lj_alloc_free(ptr noundef %0, ptr noundef nonnull %i.au)
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.ax = icmp eq ptr %i.f, %i.aw
  br i1 %i.ax, label %bb.l, label %direct_resize.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = add i64 %i.az, %i.e                     ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.j
  br i1 %i.bb, label %bb.m, label %direct_resize.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = sub nuw i64 %i.ba, %i.j                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.be = or disjoint i64 %i.j, %i.k
  %i.bf = or disjoint i64 %i.be, 2
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = or i64 %i.bc, 1
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !13
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !24
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.j, %bb.e, %bb.g
  %.072.ph = phi ptr [ %i.ab, %bb.g ], [ %i.b, %bb.e ], [ %i.b, %bb.j ], [ %i.b, %bb.m ], [ %i.b, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.072.ph, i64 16
  br label %bb.r

direct_resize.exit:                               ; preds = %bb.k, %bb.l, %bb.d, %bb.f
  %i.bj = tail call fastcc ptr @lj_alloc_malloc(ptr noundef %0, i64 noundef %2) ; 3 uses
  %.not84 = icmp eq ptr %i.bj, null
  br i1 %.not84, label %bb.r, label %bb.o

bb.o:                                             ; preds = %direct_resize.exit
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bl = and i64 %i.bk, 1
  %.not85 = icmp eq i64 %i.bl, 0
  br i1 %.not85, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !34
  %i.bn = trunc i64 %i.bm to i1
  %.neg = select i1 %i.bn, i64 -16, i64 -8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.neg86 = phi i64 [ -8, %bb.o ], [ %.neg, %bb.p ]
  %i.bo = add i64 %.neg86, %i.e
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 8 %1, i64 %i.bp, i1 false)
  tail call fastcc void @lj_alloc_free(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %direct_resize.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.bi, %bb.n ], [ %i.bj, %bb.q ], [ null, %direct_resize.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i64 @lj_prng_u64(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc i64 @release_unused_segments(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not173 = icmp eq ptr %i.b, null
  br i1 %.not173, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.0177 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.ag ] ; 5 uses
  %.0131176 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.ag ]
  %.0136175 = phi ptr [ %i.c, %.lr.ph ], [ %.2142, %bb.ag ] ; 2 uses
  %.0140174 = phi ptr [ %i.b, %.lr.ph ], [ %i.l, %bb.ag ] ; 8 uses
  %i.h = load ptr, ptr %.0140174, align 8, !tbaa !31 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0140174, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0140174, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 3 uses
  %i.m = add i64 %.0131176, 1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = ptrtoint ptr %i.n to i64
end_hunk_1
