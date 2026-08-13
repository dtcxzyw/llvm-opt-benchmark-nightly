inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumUnrolled: 103
begin_hunk_0_@roq_encode_frame:bb.a
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %i.cb, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !66
  %i.jg = zext i8 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 52
  store i32 %i.jg, ptr %i.iz, align 4, !tbaa !69
  %i.ji = load i32, ptr %i.by, align 4, !tbaa !69
  %i.jj = mul nsw i32 %i.ji, %i.ci
  %i.jk = add i32 %i.jj, %i.cm
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.cc, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !66
  %i.jo = zext i8 %i.jn to i32
  %i.jp = getelementptr inbounds i8, ptr %i.cd, i64 %i.jl
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !66
  %i.jr = zext i8 %i.jq to i32
  %i.js = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.jt = mul nsw i32 %i.js, %i.ci
  %i.ju = add i32 %i.jt, %i.df
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds i8, ptr %i.cb, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !66
  %i.jy = zext i8 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 56
  store i32 %i.jy, ptr %i.jh, align 4, !tbaa !69
  %i.ka = load i32, ptr %i.by, align 4, !tbaa !69
  %i.kb = mul nsw i32 %i.ka, %i.ci
  %i.kc = add i32 %i.kb, %i.df
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.cc, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !66
  %i.kg = zext i8 %i.kf to i32
  %i.kh = getelementptr inbounds i8, ptr %i.cd, i64 %i.kd
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !66
  %i.kj = zext i8 %i.ki to i32
  %i.kk = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.kl = mul nsw i32 %i.kk, %i.cj
  %i.km = add i32 %i.kl, %i.cm
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.cb, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !66
  %i.kq = zext i8 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 60
  store i32 %i.kq, ptr %i.jz, align 4, !tbaa !69
  %i.ks = load i32, ptr %i.by, align 4, !tbaa !69
  %i.kt = mul nsw i32 %i.ks, %i.cj
  %i.ku = add i32 %i.kt, %i.cm
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.cc, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !66
  %i.ky = zext i8 %i.kx to i32
  %i.kz = getelementptr inbounds i8, ptr %i.cd, i64 %i.kv
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !66
  %i.lb = zext i8 %i.la to i32
  %i.lc = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.ld = mul nsw i32 %i.lc, %i.cj
  %i.le = add i32 %i.ld, %i.df
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds i8, ptr %i.cb, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !66
  %i.li = zext i8 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 64
  store i32 %i.li, ptr %i.kr, align 4, !tbaa !69
  %i.lk = load i32, ptr %i.by, align 4, !tbaa !69
  %i.ll = mul nsw i32 %i.lk, %i.cj
  %i.lm = add i32 %i.ll, %i.df
  %i.ln = sext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.cc, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !66
  %i.lq = zext i8 %i.lp to i32
  %i.lr = getelementptr inbounds i8, ptr %i.cd, i64 %i.ln
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !66
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add nuw nsw i32 %i.jo, 2
  %i.lv = add nuw nsw i32 %i.lu, %i.kg
  %i.lw = add nuw nsw i32 %i.lv, %i.ky
  %i.lx = add nuw nsw i32 %i.lw, %i.lq
  %i.ly = lshr i32 %i.lx, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 68
  store i32 %i.ly, ptr %i.lj, align 4, !tbaa !69
  %i.ma = add nuw nsw i32 %i.jr, 2
  %i.mb = add nuw nsw i32 %i.ma, %i.kj
  %i.mc = add nuw nsw i32 %i.mb, %i.lb
  %i.md = add nuw nsw i32 %i.mc, %i.lt
  %i.me = lshr i32 %i.md, 2
  store i32 %i.me, ptr %i.lz, align 4, !tbaa !69
  %i.mf = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 72
  %i.mg = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.mh = mul nsw i32 %i.mg, %i.ci
  %i.mi = add i32 %i.mh, %i.fu
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.cb, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !66
  %i.mm = zext i8 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 76
  store i32 %i.mm, ptr %i.mf, align 4, !tbaa !69
  %i.mo = load i32, ptr %i.by, align 4, !tbaa !69
  %i.mp = mul nsw i32 %i.mo, %i.ci
  %i.mq = add i32 %i.mp, %i.fu
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.cc, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !66
  %i.mu = zext i8 %i.mt to i32
  %i.mv = getelementptr inbounds i8, ptr %i.cd, i64 %i.mr
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !66
  %i.mx = zext i8 %i.mw to i32
  %i.my = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.mz = mul nsw i32 %i.my, %i.ci
  %i.na = add i32 %i.mz, %i.gn
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %i.cb, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !66
  %i.ne = zext i8 %i.nd to i32
  %i.nf = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 80
  store i32 %i.ne, ptr %i.mn, align 4, !tbaa !69
  %i.ng = load i32, ptr %i.by, align 4, !tbaa !69
  %i.nh = mul nsw i32 %i.ng, %i.ci
  %i.ni = add i32 %i.nh, %i.gn
  %i.nj = sext i32 %i.ni to i64                   ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %i.cc, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !66
  %i.nm = zext i8 %i.nl to i32
  %i.nn = getelementptr inbounds i8, ptr %i.cd, i64 %i.nj
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !66
  %i.np = zext i8 %i.no to i32
  %i.nq = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.nr = mul nsw i32 %i.nq, %i.cj
  %i.ns = add i32 %i.nr, %i.fu
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds i8, ptr %i.cb, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !66
  %i.nw = zext i8 %i.nv to i32
  %i.nx = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 84
  store i32 %i.nw, ptr %i.nf, align 4, !tbaa !69
  %i.ny = load i32, ptr %i.by, align 4, !tbaa !69
  %i.nz = mul nsw i32 %i.ny, %i.cj
  %i.oa = add i32 %i.nz, %i.fu
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.cc, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !66
  %i.oe = zext i8 %i.od to i32
  %i.of = getelementptr inbounds i8, ptr %i.cd, i64 %i.ob
  %i.og = load i8, ptr %i.of, align 1, !tbaa !66
  %i.oh = zext i8 %i.og to i32
  %i.oi = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.oj = mul nsw i32 %i.oi, %i.cj
  %i.ok = add i32 %i.oj, %i.gn
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds i8, ptr %i.cb, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !66
  %i.oo = zext i8 %i.on to i32
  %i.op = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 88
  store i32 %i.oo, ptr %i.nx, align 4, !tbaa !69
  %i.oq = load i32, ptr %i.by, align 4, !tbaa !69
  %i.or = mul nsw i32 %i.oq, %i.cj
  %i.os = add i32 %i.or, %i.gn
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.cc, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !66
  %i.ow = zext i8 %i.ov to i32
  %i.ox = getelementptr inbounds i8, ptr %i.cd, i64 %i.ot
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !66
  %i.oz = zext i8 %i.oy to i32
  %i.pa = add nuw nsw i32 %i.mu, 2
  %i.pb = add nuw nsw i32 %i.pa, %i.nm
  %i.pc = add nuw nsw i32 %i.pb, %i.oe
  %i.pd = add nuw nsw i32 %i.pc, %i.ow
  %i.pe = lshr i32 %i.pd, 2
  %i.pf = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 92
  store i32 %i.pe, ptr %i.op, align 4, !tbaa !69
  %i.pg = add nuw nsw i32 %i.mx, 2
  %i.ph = add nuw nsw i32 %i.pg, %i.np
  %i.pi = add nuw nsw i32 %i.ph, %i.oh
  %i.pj = add nuw nsw i32 %i.pi, %i.oz
  %i.pk = lshr i32 %i.pj, 2
  store i32 %i.pk, ptr %i.pf, align 4, !tbaa !69
  %i.pl = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 96 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.pm = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ce
  br i1 %i.pm, label %.preheader23.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !70

._crit_edge.i.i.i:                                ; preds = %.preheader23.i.i.i
  %indvars.iv.next36.i.i.i = add nuw nsw i64 %indvars.iv35.i.i.i, 4 ; 2 uses
  %i.pn = icmp samesign ult i64 %indvars.iv.next36.i.i.i, %i.cf
  br i1 %i.pn, label %.preheader24.i.i.i, label %create_clusters.exit.i.i, !llvm.loop !72

create_clusters.exit.i.i:                         ; preds = %._crit_edge.i.i.i, %.preheader24.lr.ph.i.i.i, %bb.h
  %i.po = getelementptr inbounds nuw i8, ptr %i.c, i64 107452 ; 3 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !42
  %.not.i.i = icmp eq i32 %i.pp, 0
  %i.pq = select i1 %.not.i.i, i32 256, i32 255   ; 3 uses
  store i32 %i.pq, ptr %i.bn, align 4, !tbaa !73
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 76700 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.c, i64 82844 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 107432 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !52
  %i.pv = getelementptr inbounds nuw i8, ptr %i.c, i64 5672 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.c, i64 5680 ; 2 uses
  %i.px = tail call i32 @avpriv_elbg_do(ptr noundef nonnull %i.pv, ptr noundef %i.bt, i32 noundef 24, i32 noundef range(i32 -536870912, 536870909) %i.br, ptr noundef nonnull %i.ps, i32 noundef range(i32 255, 257) %i.pq, i32 noundef 1, ptr noundef %i.pu, ptr noundef nonnull %i.pw, i64 noundef 0) #9 ; 2 uses
  %i.py = icmp slt i32 %i.px, 0
  br i1 %i.py, label %roq_encode_video.exit.thread, label %.preheader39.split.i.i.i

.preheader39.split.i.i.i:                         ; preds = %create_clusters.exit.i.i
  %narrow.i.i.i = shl nuw nsw i32 %i.pq, 2
  %flatten.tripcount.i.i.i = zext nneg i32 %narrow.i.i.i to i64
  br label %.preheader38.i.i.i

.preheader38.i.i.i:                               ; preds = %.preheader38.i.i.i, %.preheader39.split.i.i.i
  %indvar49.i.i.i = phi i64 [ 0, %.preheader39.split.i.i.i ], [ %indvar.next50.i.i.i.1, %.preheader38.i.i.i ]
  %.03247.i.i.i.a = phi ptr [ %i.pr, %.preheader39.split.i.i.i ], [ %i.ru, %.preheader38.i.i.i ] ; 13 uses
  %.03247.i.i.i = phi ptr [ %i.ps, %.preheader39.split.i.i.i ], [ %i.rq, %.preheader38.i.i.i ] ; 13 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 4
  %i.qa = load i32, ptr %.03247.i.i.i, align 4, !tbaa !69
  %i.qb = trunc i32 %i.qa to i8
  store i8 %i.qb, ptr %.03247.i.i.i.a, align 1, !tbaa !66
  %i.qc = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 8
  %i.qd = load i32, ptr %i.pz, align 4, !tbaa !69
  %i.qe = trunc i32 %i.qd to i8
  %i.qf = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 1
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !66
  %i.qg = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 12
  %i.qh = load i32, ptr %i.qc, align 4, !tbaa !69
  %i.qi = trunc i32 %i.qh to i8
  %i.qj = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 2
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !66
  %i.qk = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 16
  %i.ql = load i32, ptr %i.qg, align 4, !tbaa !69
  %i.qm = trunc i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 3
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !66
  %i.qo = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 20
  %i.qp = load i32, ptr %i.qk, align 4, !tbaa !69
  %i.qq = trunc i32 %i.qp to i8
  %i.qr = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 4
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !74
  %i.qs = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 24
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !69
  %i.qu = trunc i32 %i.qt to i8
  %i.qv = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 5
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !76
  %i.qw = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 6
  %i.qx = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 28
  %i.qy = load i32, ptr %i.qs, align 4, !tbaa !69
  %i.qz = trunc i32 %i.qy to i8
  store i8 %i.qz, ptr %i.qw, align 1, !tbaa !66
  %i.ra = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 32
  %i.rb = load i32, ptr %i.qx, align 4, !tbaa !69
  %i.rc = trunc i32 %i.rb to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 7
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !66
  %i.re = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 36
  %i.rf = load i32, ptr %i.ra, align 4, !tbaa !69
  %i.rg = trunc i32 %i.rf to i8
  %i.rh = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 8
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !66
  %i.ri = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 40
  %i.rj = load i32, ptr %i.re, align 4, !tbaa !69
  %i.rk = trunc i32 %i.rj to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 9
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !66
  %i.rm = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 44
  %i.rn = load i32, ptr %i.ri, align 4, !tbaa !69
  %i.ro = trunc i32 %i.rn to i8
  %i.rp = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 10
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !74
  %i.rq = getelementptr inbounds nuw i8, ptr %.03247.i.i.i, i64 48
  %i.rr = load i32, ptr %i.rm, align 4, !tbaa !69
  %i.rs = trunc i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 11
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !76
  %i.ru = getelementptr inbounds nuw i8, ptr %.03247.i.i.i.a, i64 12
  %indvar.next50.i.i.i.1 = add nuw nsw i64 %indvar49.i.i.i, 2 ; 2 uses
  %exitcond52.not.i.i.i = icmp eq i64 %indvar.next50.i.i.i.1, %flatten.tripcount.i.i.i
  br i1 %exitcond52.not.i.i.i, label %generate_codebook.exit.i.i, label %.preheader38.i.i.i, !llvm.loop !77

generate_codebook.exit.i.i:                       ; preds = %.preheader38.i.i.i
  %i.rv = shl nsw i32 %i.br, 2
  %i.rw = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 18 uses
  %i.rx = load ptr, ptr %i.pt, align 8, !tbaa !52
  %i.ry = tail call i32 @avpriv_elbg_do(ptr noundef nonnull %i.pv, ptr noundef %i.bt, i32 noundef 6, i32 noundef range(i32 -536870912, 536870909) %i.rv, ptr noundef nonnull %i.ps, i32 noundef 256, i32 noundef 1, ptr noundef %i.rx, ptr noundef nonnull %i.pw, i64 noundef 0) #9 ; 2 uses
  %i.rz = icmp slt i32 %i.ry, 0
  br i1 %i.rz, label %roq_encode_video.exit.thread, label %.preheader38.i57.i.i

.preheader38.i57.i.i:                             ; preds = %generate_codebook.exit.i.i, %.preheader38.i57.i.i
  %indvar49.i58.i.i = phi i64 [ %indvar.next50.i61.i.i.1, %.preheader38.i57.i.i ], [ 0, %generate_codebook.exit.i.i ]
  %.03247.i59.i.i = phi ptr [ %7, %.preheader38.i57.i.i ], [ %i.rw, %generate_codebook.exit.i.i ] ; 13 uses
  %.03247.i60.i.i = phi ptr [ %6, %.preheader38.i57.i.i ], [ %i.ps, %generate_codebook.exit.i.i ] ; 13 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 4
  %i.sb = load i32, ptr %.03247.i60.i.i, align 4, !tbaa !69
  %i.sc = trunc i32 %i.sb to i8
  store i8 %i.sc, ptr %.03247.i59.i.i, align 1, !tbaa !66
  %i.sd = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 8
  %i.se = load i32, ptr %i.sa, align 4, !tbaa !69
  %i.sf = trunc i32 %i.se to i8
  %i.sg = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 1
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !66
  %i.sh = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 12
  %i.si = load i32, ptr %i.sd, align 4, !tbaa !69
  %i.sj = trunc i32 %i.si to i8
  %i.sk = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 2
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !66
  %i.sl = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 16
  %i.sm = load i32, ptr %i.sh, align 4, !tbaa !69
  %i.sn = trunc i32 %i.sm to i8
  %i.so = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 3
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !66
  %i.sp = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 20
  %i.sq = load i32, ptr %i.sl, align 4, !tbaa !69
  %i.sr = trunc i32 %i.sq to i8
  %i.ss = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 4
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !74
  %5 = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 24
  %i.st = load i32, ptr %i.sp, align 4, !tbaa !69
  %i.su = trunc i32 %i.st to i8
  %i.sv = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 5
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !76
  %i.sw = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 6
  %i.sx = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 28
  %i.sy = load i32, ptr %5, align 4, !tbaa !69
  %i.sz = trunc i32 %i.sy to i8
  store i8 %i.sz, ptr %i.sw, align 1, !tbaa !66
  %i.ta = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 32
  %i.tb = load i32, ptr %i.sx, align 4, !tbaa !69
  %i.tc = trunc i32 %i.tb to i8
  %i.td = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 7
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !66
  %i.te = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 36
  %i.tf = load i32, ptr %i.ta, align 4, !tbaa !69
  %i.tg = trunc i32 %i.tf to i8
  %i.th = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 8
  store i8 %i.tg, ptr %i.th, align 1, !tbaa !66
  %i.ti = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 40
  %i.tj = load i32, ptr %i.te, align 4, !tbaa !69
  %i.tk = trunc i32 %i.tj to i8
  %i.tl = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 9
  store i8 %i.tk, ptr %i.tl, align 1, !tbaa !66
  %i.tm = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 44
  %i.tn = load i32, ptr %i.ti, align 4, !tbaa !69
  %i.to = trunc i32 %i.tn to i8
  %i.tp = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 10
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !74
  %6 = getelementptr inbounds nuw i8, ptr %.03247.i60.i.i, i64 48
  %i.tq = load i32, ptr %i.tm, align 4, !tbaa !69
  %i.tr = trunc i32 %i.tq to i8
  %i.ts = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 11
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !76
  %7 = getelementptr inbounds nuw i8, ptr %.03247.i59.i.i, i64 12
  %indvar.next50.i61.i.i.1 = add nuw nsw i64 %indvar49.i58.i.i, 2 ; 2 uses
  %exitcond52.not.i67.i.i.1 = icmp eq i64 %indvar.next50.i61.i.i.1, 256
  br i1 %exitcond52.not.i67.i.i.1, label %generate_codebook.exit69.i.i, label %.preheader38.i57.i.i, !llvm.loop !77

generate_codebook.exit69.i.i:                     ; preds = %.preheader38.i57.i.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.c, i64 10120 ; 2 uses
  store i32 256, ptr %i.tt, align 8, !tbaa !78
  %i.tu = getelementptr inbounds nuw i8, ptr %i.c, i64 12172 ; 7 uses
  br label %bb.i

.preheader77.i.i:                                 ; preds = %bb.i
  %i.tv = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %.preheader.lr.ph.i.i, label %generate_new_codebooks.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader77.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 1576
  %i.ty = getelementptr inbounds nuw i8, ptr %i.c, i64 15244
  %i.tz = getelementptr inbounds nuw i8, ptr %i.c, i64 27532
  br label %.preheader.i.i

bb.i:                                             ; preds = %bb.i, %generate_codebook.exit69.i.i
  %indvars.iv.i.i = phi i64 [ 0, %generate_codebook.exit69.i.i ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 4 uses
  %i.ua = getelementptr inbounds nuw [6 x i8], ptr %i.rw, i64 %indvars.iv.i.i ; 3 uses
  %i.ub = mul nuw nsw i64 %indvars.iv.i.i, 12
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.ub ; 3 uses
  %i.ud = load i32, ptr %i.ua, align 1
  store i32 %i.ud, ptr %i.uc, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ue, i8 %i.ug, i64 4, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ua, i64 5
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.uh, i8 %i.uj, i64 4, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw [6 x i8], ptr %i.rw, i64 %indvars.iv.next.i.i ; 3 uses
  %i.ul = mul nuw nsw i64 %indvars.iv.next.i.i, 12
  %i.um = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.ul ; 3 uses
  %i.un = load i32, ptr %i.uk, align 1
  store i32 %i.un, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.uo, i8 %i.uq, i64 4, i1 false)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.uk, i64 5
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ur, i8 %i.ut, i64 4, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %.preheader77.i.i, label %bb.i, !llvm.loop !79

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.lr.ph.i.i
  %indvars.iv100.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next101.i.i, %bb.k ] ; 5 uses
  %i.uu = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %indvars.iv100.i.i ; 5 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv100.i.i, 24
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx.i.i
  br label %bb.j

bb.j:                                             ; preds = %index_mb.exit.i.i, %.preheader.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next97.i.i, %index_mb.exit.i.i ] ; 3 uses
  %i.uv = load i32, ptr %i.tt, align 8, !tbaa !78 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv96.i.i
  %i.ux = icmp sgt i32 %i.uv, 0
  br i1 %i.ux, label %.lr.ph.i.i.i, label %index_mb.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %gep.i.i = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv96.i.i ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 4
  %i.uz = load <2 x i8>, ptr %i.uy, align 1, !tbaa !66
  %i.va = load i32, ptr %gep.i.i, align 1         ; 4 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.uv to i64
  %.sroa.0.1.extract.shift.i.i = lshr i32 %i.va, 8
  %.sroa.0.2.extract.shift.i.i = lshr i32 %i.va, 16
  %.sroa.0.3.extract.shift.i.i = lshr i32 %i.va, 24
  %i.vb = zext <2 x i8> %i.uz to <2 x i32>
  %i.vc = shufflevector <2 x i32> %i.vb, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.vd = and i32 %i.va, 255
  %i.ve = and i32 %.sroa.0.1.extract.shift.i.i, 255
  %i.vf = and i32 %.sroa.0.2.extract.shift.i.i, 255
  br label %eval_sse.exit.i.i.i.i

eval_sse.exit.i.i.i.i:                            ; preds = %eval_sse.exit.i.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i71.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i72.i.i, %eval_sse.exit.i.i.i.i ] ; 3 uses
  %.01523.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  %.01622.i.i.i = phi i32 [ 2147483647, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %eval_sse.exit.i.i.i.i ] ; 2 uses
  %i.vg = mul nuw nsw i64 %indvars.iv.i71.i.i, 12
  %i.vh = and i64 %i.vg, 4294967292
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.vh ; 5 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vk = load i8, ptr %i.vi, align 1, !tbaa !66
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 2
  %i.vm = load i8, ptr %i.vj, align 1, !tbaa !66
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 3
  %i.vo = load i8, ptr %i.vl, align 1, !tbaa !66
  %i.vp = load i8, ptr %i.vn, align 1, !tbaa !66
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 4
  %i.vr = load <8 x i8>, ptr %i.vq, align 1, !tbaa !66
  %i.vs = zext <8 x i8> %i.vr to <8 x i32>
  %i.vt = sub nsw <8 x i32> %i.vs, %i.vc          ; 2 uses
  %i.vu = mul nsw <8 x i32> %i.vt, %i.vt
  %i.vv = zext i8 %i.vk to i32
  %i.vw = sub nsw i32 %i.vv, %i.vd                ; 2 uses
  %i.vx = mul nsw i32 %i.vw, %i.vw
  %i.vy = zext i8 %i.vm to i32
  %i.vz = sub nsw i32 %i.vy, %i.ve                ; 2 uses
  %i.wa = mul nsw i32 %i.vz, %i.vz
  %i.wb = add nuw nsw i32 %i.wa, %i.vx
  %i.wc = zext i8 %i.vo to i32
  %i.wd = sub nsw i32 %i.wc, %i.vf                ; 2 uses
  %i.we = mul nsw i32 %i.wd, %i.wd
  %i.wf = add nuw nsw i32 %i.wb, %i.we
  %i.wg = zext i8 %i.vp to i32
  %i.wh = sub nsw i32 %i.wg, %.sroa.0.3.extract.shift.i.i ; 2 uses
  %i.wi = mul nsw i32 %i.wh, %i.wh
  %i.wj = add nuw nsw i32 %i.wf, %i.wi
  %i.wk = trunc nuw nsw i64 %indvars.iv.i71.i.i to i32
  %i.wl = shl nsw i32 %i.wj, 2
  %i.wm = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.vu)
  %op.rdx123 = add i32 %i.wm, %i.wl               ; 2 uses
  %i.wn = icmp slt i32 %op.rdx123, %.01622.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %op.rdx123, i32 %.01622.i.i.i)
  %spec.select19.i.i.i = select i1 %i.wn, i32 %i.wk, i32 %.01523.i.i.i ; 2 uses
  %indvars.iv.next.i72.i.i = add nuw nsw i64 %indvars.iv.i71.i.i, 1 ; 2 uses
  %exitcond.not.i73.i.i = icmp eq i64 %indvars.iv.next.i72.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i73.i.i, label %index_mb.exit.i.i, label %eval_sse.exit.i.i.i.i, !llvm.loop !80

index_mb.exit.i.i:                                ; preds = %eval_sse.exit.i.i.i.i, %bb.j
  %.015.lcssa.i.i.i = phi i32 [ 0, %bb.j ], [ %spec.select19.i.i.i, %eval_sse.exit.i.i.i.i ]
  store i32 %.015.lcssa.i.i.i, ptr %i.uw, align 4, !tbaa !69
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond99.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, 4
  br i1 %exitcond99.not.i.i, label %bb.k, label %bb.j, !llvm.loop !81

bb.k:                                             ; preds = %index_mb.exit.i.i
  %i.wo = mul nuw nsw i64 %indvars.iv100.i.i, 48
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.wo ; 26 uses
  %i.wq = load i32, ptr %i.uu, align 4, !tbaa !69
  %i.wr = mul nsw i32 %i.wq, 12
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %i.tu, i64 %i.ws ; 10 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 1
  %i.wv = getelementptr i8, ptr %i.wp, i64 1
  %i.ww = getelementptr i8, ptr %i.wt, i64 2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wp, i64 2
  %i.wz = getelementptr i8, ptr %i.wp, i64 6
  %i.xa = getelementptr i8, ptr %i.wp, i64 7
  %i.xb = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.xd = getelementptr i8, ptr %i.wp, i64 9
  %i.xe = getelementptr i8, ptr %i.wp, i64 12
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wp, i64 10
  %i.xh = getelementptr i8, ptr %i.wp, i64 11
  %i.xi = getelementptr i8, ptr %i.wt, i64 4      ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wp, i64 16 ; 2 uses
  %i.xk = getelementptr i8, ptr %i.wt, i64 5
  %i.xl = getelementptr i8, ptr %i.wp, i64 17
  %i.xm = getelementptr i8, ptr %i.wt, i64 6
  %i.xn = getelementptr i8, ptr %i.wp, i64 20
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wp, i64 18
  %i.xp = getelementptr i8, ptr %i.wp, i64 19
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wp, i64 24 ; 2 uses
  %i.xr = getelementptr i8, ptr %i.wp, i64 28     ; 2 uses
  %i.xs = getelementptr i8, ptr %i.wt, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wp, i64 32 ; 2 uses
  %i.xu = getelementptr i8, ptr %i.wt, i64 9
  %i.xv = getelementptr i8, ptr %i.wp, i64 33     ; 2 uses
  %i.xw = getelementptr i8, ptr %i.wt, i64 10
  %i.xx = getelementptr i8, ptr %i.wp, i64 36
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wp, i64 34 ; 2 uses
  %i.xz = getelementptr i8, ptr %i.wp, i64 35
  %i.ya = getelementptr i8, ptr %i.wp, i64 38
  %i.yb = getelementptr i8, ptr %i.wp, i64 39     ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wp, i64 40 ; 2 uses
  %i.yd = getelementptr i8, ptr %i.wp, i64 44     ; 2 uses
  %i.ye = mul nuw nsw i64 %indvars.iv100.i.i, 192
  %i.yf = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ye ; 28 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.yh = load <2 x i8>, ptr %i.wt, align 1, !tbaa !66
  %i.yi = load i8, ptr %i.wu, align 1, !tbaa !66
  %i.yj = load i8, ptr %i.wt, align 1, !tbaa !66
  store i8 %i.yj, ptr %i.wp, align 1, !tbaa !66
  store i8 %i.yi, ptr %i.wv, align 1, !tbaa !66
  %i.yk = load i32, ptr %i.wx, align 4, !tbaa !69
  %i.yl = mul nsw i32 %i.yk, 12
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds i8, ptr %i.tu, i64 %i.ym ; 10 uses
  %i.yo = load <2 x i8>, ptr %i.yn, align 1, !tbaa !66
  %i.yp = getelementptr i8, ptr %i.yn, i64 2      ; 2 uses
  %i.yq = getelementptr i8, ptr %i.yn, i64 3
  %i.yr = getelementptr i8, ptr %i.yn, i64 4      ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yn, i64 5
  %i.yt = getelementptr i8, ptr %i.yn, i64 6
  %i.yu = getelementptr i8, ptr %i.yn, i64 8
  %i.yv = getelementptr i8, ptr %i.yn, i64 10
  %i.yw = getelementptr i8, ptr %i.yn, i64 11
  %i.yx = shufflevector <2 x i8> %i.yh, <2 x i8> %i.yo, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
end_hunk_0
