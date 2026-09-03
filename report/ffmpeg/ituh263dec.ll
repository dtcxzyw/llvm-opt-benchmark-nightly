Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ituh263dec?download=true
inline.NumInlined: 161
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ff_h263_decode_picture_header:bb.a
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !71
  %i.li = tail call i32 @llvm.bswap.i32(i32 %i.lh)
  %i.lj = and i32 %i.ld, 7
  %i.lk = shl i32 %i.li, %i.lj
  %i.ll = lshr i32 %i.lk, 29                      ; 2 uses
  %i.lm = add i32 %i.ld, 3
  store i32 %i.lm, ptr %i.b, align 8, !tbaa !72
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 7 uses
  store i32 %i.ll, ptr %i.ln, align 16, !tbaa !54
  switch i32 %i.ll, label %.critedge [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 7, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.ln, align 16, !tbaa !54
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  store i32 2, ptr %i.ln, align 16, !tbaa !54
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  store i32 2, ptr %i.ln, align 16, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store i32 3, ptr %i.lo, align 16, !tbaa !87
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  store i32 3, ptr %i.ln, align 16, !tbaa !54
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  store i32 1, ptr %i.ln, align 16, !tbaa !54
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.lp = add i32 %i.ld, 5                        ; 3 uses
  store i32 %i.lp, ptr %i.b, align 8, !tbaa !72
  %i.lq = lshr i32 %i.lp, 3
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !71
  %i.lu = and i32 %i.lp, 7
  %i.lv = zext i8 %i.lt to i32
  %i.lw = shl nuw nsw i32 %i.lv, %i.lu
  %i.lx = lshr i32 %i.lw, 7
  %i.ly = and i32 %i.lx, 1
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 3104
  store i32 %i.ly, ptr %i.lz, align 16, !tbaa !55
  %i.ma = add i32 %i.ld, 10                       ; 3 uses
  store i32 %i.ma, ptr %i.b, align 8, !tbaa !72
  %.not282 = icmp eq i32 %i.fv, 0                 ; 2 uses
  br i1 %.not282, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mb = icmp eq i32 %.0263, 6
  br i1 %i.mb, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.mc = lshr i32 %i.ma, 3
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 1, !tbaa !71
  %i.mg = tail call i32 @llvm.bswap.i32(i32 %i.mf)
  %i.mh = and i32 %i.ma, 7
  %i.mi = shl i32 %i.mg, %i.mh
  %i.mj = lshr i32 %i.mi, 28                      ; 2 uses
  %i.mk = add i32 %i.ld, 14                       ; 3 uses
  store i32 %i.mk, ptr %i.b, align 8, !tbaa !72
  %i.ml = lshr i32 %i.mk, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 1, !tbaa !71
  %i.mp = tail call i32 @llvm.bswap.i32(i32 %i.mo)
  %i.mq = and i32 %i.mk, 7
  %i.mr = shl i32 %i.mp, %i.mq
  %i.ms = add i32 %i.ld, 23
  store i32 %i.ms, ptr %i.b, align 8, !tbaa !72
  %i.mt = lshr i32 %i.mr, 21
  %i.mu = and i32 %i.mt, 2044
  %i.mv = add nuw nsw i32 %i.mu, 4                ; 2 uses
  %i.mw = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.mx = tail call fastcc i32 @check_marker(ptr noundef %i.mw, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.26) ; 0 uses
  %i.my = load i32, ptr %i.b, align 8, !tbaa !72  ; 5 uses
  %i.mz = load ptr, ptr %i.a, align 16, !tbaa !73 ; 3 uses
  %i.na = lshr i32 %i.my, 3
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 1, !tbaa !71
  %i.ne = tail call i32 @llvm.bswap.i32(i32 %i.nd)
  %i.nf = and i32 %i.my, 7
  %i.ng = shl i32 %i.ne, %i.nf
  %i.nh = add i32 %i.my, 9                        ; 3 uses
  store i32 %i.nh, ptr %i.b, align 8, !tbaa !72
  %i.ni = lshr i32 %i.ng, 21
  %i.nj = and i32 %i.ni, 2044                     ; 2 uses
  %i.nk = icmp eq i32 %i.mj, 15
  br i1 %i.nk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.nl = lshr i32 %i.nh, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 1, !tbaa !71
  %i.np = tail call i32 @llvm.bswap.i32(i32 %i.no)
  %i.nq = and i32 %i.nh, 7
  %i.nr = shl i32 %i.np, %i.nq
  %i.ns = lshr i32 %i.nr, 24
  %i.nt = add i32 %i.my, 17                       ; 3 uses
  store i32 %i.nt, ptr %i.b, align 8, !tbaa !72
  %i.nu = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 128
  store i32 %i.ns, ptr %i.nv, align 8, !tbaa !154
  %i.nw = lshr i32 %i.nt, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 1, !tbaa !71
  %i.oa = tail call i32 @llvm.bswap.i32(i32 %i.nz)
  %i.ob = and i32 %i.nt, 7
  %i.oc = shl i32 %i.oa, %i.ob
  %i.od = lshr i32 %i.oc, 24                      ; 2 uses
  %i.oe = add i32 %i.my, 25
  store i32 %i.oe, ptr %i.b, align 8, !tbaa !72
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 132
  store i32 %i.od, ptr %i.of, align 4, !tbaa !155
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.og = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 128
  %i.oi = zext nneg i32 %i.mj to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr @ff_h263_pixel_aspect, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8
  store i64 %i.ok, ptr %i.oh, align 8
  %.pre337 = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre337, i64 132
  %.pre338 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !155
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.ol = zext nneg i32 %.0263 to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @ff_h263_format, i64 %i.ol ; 2 uses
  %i.on = load i16, ptr %i.om, align 4, !tbaa !70
  %i.oo = zext i16 %i.on to i32
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 2
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !70
  %i.or = zext i16 %i.oq to i32
  %i.os = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 128
  store i32 12, ptr %i.ot, align 8, !tbaa !80
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.os, i64 132
  store i32 11, ptr %.sroa.216.0..sroa_idx, align 4, !tbaa !80
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %i.ou = phi i32 [ 11, %bb.ak ], [ %.pre338, %bb.aj ], [ %i.od, %bb.ai ]
  %i.ov = phi ptr [ %i.os, %bb.ak ], [ %.pre337, %bb.aj ], [ %i.nu, %bb.ai ] ; 5 uses
  %.0257 = phi i32 [ %i.or, %bb.ak ], [ %i.nj, %bb.aj ], [ %i.nj, %bb.ai ] ; 2 uses
  %.0256 = phi i32 [ %i.oo, %bb.ak ], [ %i.mv, %bb.aj ], [ %i.mv, %bb.ai ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 4428
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !156
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 132
  %i.oz = shl i32 %i.ou, %i.ox
  store i32 %i.oz, ptr %i.oy, align 4, !tbaa !155
  %i.pa = icmp eq i32 %.0256, 0
  %i.pb = icmp eq i32 %.0257, 0
  %or.cond3 = select i1 %i.pa, i1 true, i1 %i.pb
  br i1 %or.cond3, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %.0256, ptr %i.pc, align 16, !tbaa !149
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %.0257, ptr %i.pd, align 4, !tbaa !150
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !151
  %.not283 = icmp eq i32 %i.pf, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 100 ; 3 uses
  br i1 %.not283, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 1800000, ptr %i.pg, align 4, !tbaa !64
  %i.ph = load i32, ptr %i.b, align 8, !tbaa !72  ; 4 uses
  %i.pi = load ptr, ptr %i.a, align 16, !tbaa !73 ; 2 uses
  %i.pj = lshr i32 %i.ph, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !71
  %i.pn = and i32 %i.ph, 7
  %i.po = zext i8 %i.pm to i32
  %i.pp = shl nuw nsw i32 %i.po, %i.pn
  %i.pq = lshr i32 %i.pp, 7
  %i.pr = add i32 %i.ph, 1                        ; 3 uses
  store i32 %i.pr, ptr %i.b, align 8, !tbaa !72
  %i.ps = and i32 %i.pq, 1
  %i.pt = or disjoint i32 %i.ps, 1000             ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ov, i64 104 ; 3 uses
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !65
  %i.pv = lshr i32 %i.pr, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 1, !tbaa !71
  %i.pz = tail call i32 @llvm.bswap.i32(i32 %i.py)
  %i.qa = and i32 %i.pr, 7
  %i.qb = shl i32 %i.pz, %i.qa
  %i.qc = lshr i32 %i.qb, 25                      ; 2 uses
  %i.qd = add i32 %i.ph, 8
  store i32 %i.qd, ptr %i.b, align 8, !tbaa !72
  %i.qe = mul nuw nsw i32 %i.qc, %i.pt            ; 3 uses
  store i32 %i.qe, ptr %i.pu, align 4, !tbaa !65
  %i.qf = icmp eq i32 %i.qc, 0
  br i1 %i.qf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ov, i32 noundef 16, ptr noundef nonnull @.str.27) #10
  br label %.critedge

bb.ap:                                            ; preds = %bb.an
  %i.qg = zext nneg i32 %i.qe to i64
  %i.qh = tail call i64 @av_gcd(i64 noundef %i.qg, i64 noundef 1800000) #11
  %i.qi = trunc i64 %i.qh to i32                  ; 2 uses
  %1 = sdiv i32 %i.qe, %i.qi
  store i32 %1, ptr %i.pu, align 4, !tbaa !65
  %2 = sdiv i32 1800000, %i.qi
  store i32 %2, ptr %i.pg, align 4, !tbaa !64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 30000, ptr %i.pg, align 4, !tbaa !80
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ov, i64 104
  store i32 1001, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !80
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.af
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !151
  %.not284 = icmp eq i32 %i.qk, 0
  br i1 %.not284, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ql = load i32, ptr %i.b, align 8, !tbaa !72
  %i.qm = add i32 %i.ql, 2
  store i32 %i.qm, ptr %i.b, align 8, !tbaa !72
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not282, label %._crit_edge341, label %bb.au

._crit_edge341:                                   ; preds = %bb.at
  %.pre342 = load i32, ptr %i.b, align 8, !tbaa !72
  br label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 4440
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !57
  %.not285 = icmp eq i32 %i.qo, 0
  %.pre343.pre347.pre = load i32, ptr %i.b, align 8, !tbaa !72 ; 5 uses
  br i1 %.not285, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qp = load ptr, ptr %i.a, align 16, !tbaa !73
  %i.qq = lshr i32 %.pre343.pre347.pre, 3
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !71
  %i.qu = and i32 %.pre343.pre347.pre, 7
  %i.qv = zext i8 %i.qt to i32
  %i.qw = add i32 %.pre343.pre347.pre, 1          ; 2 uses
  store i32 %i.qw, ptr %i.b, align 8, !tbaa !72
  %i.qx = lshr exact i32 128, %i.qu
  %i.qy = and i32 %i.qx, %i.qv
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ra = add i32 %.pre343.pre347.pre, 2          ; 2 uses
  store i32 %i.ra, ptr %i.b, align 8, !tbaa !72
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au
  %.pre343.pre347 = phi i32 [ %i.qw, %bb.av ], [ %i.ra, %bb.aw ], [ %.pre343.pre347.pre, %bb.au ] ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 4444
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !63
  %.not286 = icmp eq i32 %i.rc, 0
  br i1 %.not286, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rd = load ptr, ptr %i.a, align 16, !tbaa !73 ; 2 uses
  %i.re = lshr i32 %.pre343.pre347, 3
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !71
  %i.ri = and i32 %.pre343.pre347, 7
  %i.rj = zext i8 %i.rh to i32
  %i.rk = add i32 %.pre343.pre347, 1              ; 2 uses
  store i32 %i.rk, ptr %i.b, align 8, !tbaa !72
  %i.rl = lshr exact i32 128, %i.ri
  %i.rm = and i32 %i.rl, %i.rj
  %.not287 = icmp eq i32 %i.rm, 0
  br i1 %.not287, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rn = load ptr, ptr %i.bn, align 8, !tbaa !39
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rn, i32 noundef 16, ptr noundef nonnull @.str.28) #10
  %.pre339 = load i32, ptr %i.b, align 8, !tbaa !72
  %.pre340 = load ptr, ptr %i.a, align 16, !tbaa !73
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ro = phi ptr [ %.pre340, %bb.az ], [ %i.rd, %bb.ay ]
  %i.rp = phi i32 [ %.pre339, %bb.az ], [ %i.rk, %bb.ay ] ; 3 uses
  %i.rq = lshr i32 %i.rp, 3
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !71
  %i.ru = and i32 %i.rp, 7
  %i.rv = zext i8 %i.rt to i32
  %i.rw = add i32 %i.rp, 1                        ; 2 uses
  store i32 %i.rw, ptr %i.b, align 8, !tbaa !72
  %i.rx = lshr exact i32 128, %i.ru
  %i.ry = and i32 %i.rx, %i.rv
  %.not288 = icmp eq i32 %i.ry, 0
  br i1 %.not288, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rz = load ptr, ptr %i.bn, align 8, !tbaa !39
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.rz, i32 noundef 16, ptr noundef nonnull @.str.29) #10
  %.pre343.pre = load i32, ptr %i.b, align 8, !tbaa !72
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ax
  %.pre343 = phi i32 [ %i.rw, %bb.ba ], [ %.pre343.pre, %bb.bb ], [ %.pre343.pre347, %bb.ax ] ; 2 uses
  %i.sa = load i32, ptr %i.ln, align 16, !tbaa !54
  %i.sb = icmp eq i32 %i.sa, 3
  br i1 %i.sb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.sc = add i32 %.pre343, 8                     ; 2 uses
  store i32 %i.sc, ptr %i.b, align 8, !tbaa !72
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge341, %bb.bc, %bb.bd
  %i.sd = phi i32 [ %.pre342, %._crit_edge341 ], [ %.pre343, %bb.bc ], [ %i.sc, %bb.bd ] ; 3 uses
  %i.se = load ptr, ptr %i.a, align 16, !tbaa !73
  %i.sf = lshr i32 %i.sd, 3
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 1, !tbaa !71
  %i.sj = tail call i32 @llvm.bswap.i32(i32 %i.si)
  %i.sk = and i32 %i.sd, 7
  %i.sl = shl i32 %i.sj, %i.sk
  %i.sm = lshr i32 %i.sl, 27
  %i.sn = add i32 %i.sd, 5
  store i32 %i.sn, ptr %i.b, align 8, !tbaa !72
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 %i.sm, ptr %i.so, align 8, !tbaa !53
  %.pre344 = load ptr, ptr %i.bn, align 8, !tbaa !39
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.n
  %i.sp = phi ptr [ %i.bo, %bb.n ], [ %.pre344, %bb.be ]
  %.0259 = phi i32 [ 0, %bb.n ], [ 1, %bb.be ]
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 16, !tbaa !149
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !150
  %i.su = tail call i32 @av_image_check_size(i32 noundef %i.sr, i32 noundef %i.st, i32 noundef 0, ptr noundef %i.sp) #10 ; 2 uses
  %i.sv = icmp slt i32 %i.su, 0
  br i1 %i.sv, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.sw = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 68
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !157
  %i.sz = and i32 %i.sy, 32768
  %.not291 = icmp eq i32 %i.sz, 0
  %.pre345 = load i32, ptr %i.sq, align 16, !tbaa !149 ; 2 uses
  %.pre346 = load i32, ptr %i.ss, align 4, !tbaa !150 ; 4 uses
  br i1 %.not291, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ta = mul nsw i32 %.pre346, %.pre345
  %i.tb = sdiv i32 %i.ta, 2048
  %.val303 = load i32, ptr %i.b, align 8, !tbaa !72
  %.val304 = load i32, ptr %i.ab, align 4, !tbaa !78
  %i.tc = sub nsw i32 %.val304, %.val303
  %i.td = icmp sgt i32 %i.tb, %i.tc
  br i1 %i.td, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.te = add i32 %.pre345, 15
  %i.tf = lshr i32 %i.te, 4                       ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !74
  %i.th = add i32 %.pre346, 15
  %i.ti = lshr i32 %i.th, 4                       ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 %i.ti, ptr %i.tj, align 8, !tbaa !83
  %i.tk = mul nuw nsw i32 %i.ti, %i.tf
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !69
  %i.tm = icmp slt i32 %.pre346, 401
  %i.tn = icmp slt i32 %.pre346, 801
  %i.to = select i1 %i.tn, i32 2, i32 4
  %i.tp = select i1 %i.tm, i32 1, i32 %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 4432
  store i32 %i.tp, ptr %i.tq, align 16, !tbaa !82
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.ts = load i32, ptr %i.tr, align 16, !tbaa !87
  %.not292 = icmp eq i32 %i.ts, 0
  br i1 %.not292, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.tt = load i32, ptr %i.b, align 8, !tbaa !72
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !151
  %.not293 = icmp eq i32 %i.tv, 0
  %spec.select.v = select i1 %.not293, i32 3, i32 5
  %spec.select = add i32 %i.tt, %spec.select.v
  %i.tw = add i32 %spec.select, 2
  store i32 %i.tw, ptr %i.b, align 8, !tbaa !72
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
end_hunk_0
